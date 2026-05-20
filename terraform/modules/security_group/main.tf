resource "aws_security_group" "app_sg" {
  name        = "legacy-inventory-sg"
  description = "Security group para la aplicacion legacy-inventory"

  ingress {
    description = "Puerto de la aplicacion"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "legacy-inventory-sg"
  }
}

output "security_group_id" {
  value = aws_security_group.app_sg.id
}
