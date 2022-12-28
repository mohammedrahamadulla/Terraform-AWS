resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.testvpc01.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.vpc_name}-allow_all"
  }
}


resource "aws_security_group" "database_sg" {
  name        = "allowdatatbase_sg_all"
  description = "Allow all inbound traffic for database"
  vpc_id      = aws_vpc.testvpc01.id

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "TCP"
    cidr_blocks = ["10.1.1.0/24"]
  }
  tags = {
    Name = "allowdatatbase_sg_all"
  }
  lifecycle {
    ignore_changes = [
      ingress,
    ]
  }
}