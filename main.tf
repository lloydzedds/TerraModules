# Provider
provider "aws" { 
    region = var.region
}

# Module
module "myvpc" {
    source = "./module/network"
}

# Resourse key pair
resource "aws_key_pair" "mod_key" {
    key_name = "mod_key"
    public_key = file(var.public_key_path)
}

# EC2 Instance
resource "aws_instance" "lloyd_instance" {
    ami = var.instance_ami
    instance_type = var.instance_type
    subnet_id = module.network.public_subnet_id
    vpc_security_group_ids = ["${module.network.sg_22_id}"]
    key_name = aws_key_pair.mod_key.key_name

    tags = {
      "Environment" = "var.environment_tag"
    }

}

