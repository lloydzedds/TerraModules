output "public_instance_id" {
    value = ["${aws_instance.lloyd_instance.public_ip}"]
  
}