
output "instance_id" {
    description = "EC2 instance"
    value       = aws_instance.app_server.id
}

output "public_ip" {
    description = "EC2 public IP"
    value       = aws_instance.app_server.public_ip
}


output "domain-name" {
  value = aws_instance.app_server.public_dns
}

output "application-url" {
  value = "http://${aws_instance.app_server.public_ip}:8080"
}

output "db_username" {
    value = var.db_username
}

output "db_name" {
    value = var.db_name
}

output "db_port" {
    value = var.db_port
}

output "db_password" {
    value = var.db_password
}

#output "db_address" {
#    value = aws_db_instance.psg_db.address
#}

