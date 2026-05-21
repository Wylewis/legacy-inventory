variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "app_port" {
  description = "Puerto de la aplicación"
  type        = number
  default     = 3000
}

variable "my_ip" {
  description = "Tu IP para acceso restringido"
  type        = string
  default     = "190.104.20.155/32"
}
