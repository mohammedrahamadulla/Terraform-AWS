resource "aws_instance" "private-server" {
  #count                       = 3
  count = "${var.env}" == "Dev" ? 1 : 1
  #ami                         = var.imagename
  ami                         = lookup(var.ami, var.region)
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.private_subnet.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = false
  tags = {
    Name       = "${local.vpc_name_lower}-Private -Server-${count.index + 1}"
    Env        = var.env
    Owner      = "mohammedrahamadulla"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx unzip jq
		echo "<h1>Deployed via Terraform on Private-Server-${count.index + 1}" | sudo tee /var/www/html/index.nginx-debian.html
	EOF
}