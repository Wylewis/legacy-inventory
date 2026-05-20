output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "IP pública de la instancia EC2"
  value       = module.ec2.public_ip
}

output "app_url" {
  description = "URL de la aplicación"
  value       = "http://${module.ec2.public_ip}:${var.app_port}"
}
