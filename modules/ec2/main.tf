data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  tags = {
    Name        = "${var.project_name}-web-server"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    echo "<h1>Deployed with Terraform by Rohan Irkullawar</h1>" > /var/www/html/index.html
    EOF
}

