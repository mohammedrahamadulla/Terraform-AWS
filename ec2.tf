resource "aws_instance" "web-1" {
  ami                         = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "Laptop_key2"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "${local.vpc_name_lower}-Server-1"
    Env        = var.env
    Owner      = "mohammedrahamadulla"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx unzip jq
		echo "<h1>Deployed via Terraform on ${local.vpc_name_lower}-Server-1" | sudo tee /var/www/html/index.nginx-debian.html
	EOF
}