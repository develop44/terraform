
output "instance_ip" {
  value = module.ec2_nesrine.public_ip
}
/*
output "instance_id" {
  value = aws_instance.web.id
}

output "instance_sg_id" {
  value = aws_security_group.simple_sg.id
}

output "instance_sg_name" {
  value = aws_security_group.simple_sg.name
} */