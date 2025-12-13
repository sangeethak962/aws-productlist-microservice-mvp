output "instance_id" {
  value = aws_instance.app_server.id
}

output "instance_private_ip" {
  value = aws_instance.app_server.private_ip
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}

# expose SG and IAM profile for use by other modules/wiring
output "app_sg_id" {
  value = aws_security_group.app_sg.id
}
