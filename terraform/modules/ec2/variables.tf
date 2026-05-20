variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "security_group_id" {
  description = "ID del security group"
  type        = string
}

variable "app_port" {
  description = "Puerto de la aplicación"
  type        = number
}
