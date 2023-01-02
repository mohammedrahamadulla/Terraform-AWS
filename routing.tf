resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.testvpc01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.testvpc01.id
  }
  tags = {
    Name = "${var.vpc_name}-Main-RT"
  }
}

resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.testvpc01.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
  tags = {
    Name = "${var.vpc_name}-Private-RT"
  }
}


resource "aws_route_table_association" "public-subnets" {
  #count          = 4
  count          = length(var.public_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_route_table_association" "private-subnets" {
  #count          = 4
  count          = length(var.private_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.private_subnet.*.id, count.index)
  route_table_id = aws_route_table.terraform-private.id
}
