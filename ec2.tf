resource "aws_instance" "web-1" {
  ami                         = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "Laptop_key2"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Test-Server-1"
    Env        = "Prod"
    Owner      = "mohammedrahamadulla"
    CostCenter = "ABCD"
  }
  lifecycle {
    create_before_destroy = true
    #prevent_destroy       = true

    ignore_changes = [
      tags,
    ]
  }
}