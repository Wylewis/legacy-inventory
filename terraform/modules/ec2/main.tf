data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "app" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs
    mkdir -p /app
    cd /app
    cat > package.json << 'PKGJSON'
    {
      "name": "legacy-inventory",
      "version": "1.0.0",
      "main": "app.js",
      "scripts": { "start": "node app.js" },
      "dependencies": { "express": "^4.18.2" }
    }
    PKGJSON
    cat > app.js << 'APPJS'
    const express = require('express');
    const app = express();
    const PORT = ${var.app_port};
    app.get('/', (req, res) => {
      res.json({ status: 'ok', app: 'legacy-inventory', port: PORT });
    });
    app.listen(PORT, () => console.log('Server running on port ' + PORT));
    APPJS
    npm install
    node app.js &
  EOF

  tags = {
    Name = "legacy-inventory-app"
  }
}

output "instance_id" {
  value = aws_instance.app.id
}

output "public_ip" {
  value = aws_instance.app.public_ip
}
