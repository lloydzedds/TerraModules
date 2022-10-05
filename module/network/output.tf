# Defining outputs to display

output "vpc_id" {
 value = aws_vpc.lloyd-vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.subnet_public.id
}

output "sg_22_id" {
    value = aws_secutity_group.lloyd_sg_22.id
}