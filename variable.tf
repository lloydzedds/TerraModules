# Module Variables
variable "region" {
    default = "eu-north-1"
}

variable "public_key_path" {
    description = "Public key path"
    default = "~/.ssh/mod_key.pub"
}

variable "instance_ami" {
    description = "AMI for aws instance"
    default = "ami-0efda064d1b5e46a5"
}

variable "instance_type" {
    description = "Type for aws instance"
    default = "t3.micro"
  
}

variable "environment_tag" {
    description = "Environment tag"
    default = "Production"
}