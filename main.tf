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
    subnet_id = aws_subnet.subnet_public.id
    vpc_security_group_ids = aws_security_group.lloyd_sg_22.id
    key_name = aws_key_pair.mod_key.key_name

    tags = {
      "Environment" = "var.environment_tag"
    }

}

