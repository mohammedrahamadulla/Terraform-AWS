resource "aws_eip" "natgw-eip" {
  tags = {
    Name = "${var.vpc_name}-natgw-eip"
  }
}


resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.natgw-eip.id
  subnet_id     = aws_subnet.public_subnet.0.id

  tags = {
    Name = "${var.vpc_name}-natgw"
  }
  depends_on = [aws_internet_gateway.testvpc01]
}