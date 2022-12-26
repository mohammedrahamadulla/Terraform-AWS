data "aws_vpc" "docker-vpc" {
  id = "vpc-0b5b774c20cef227c"
}

data "aws_route_table" "docker-vpc-rt" {
  route_table_id = "rtb-06ab589b285ce3a56"
  vpc_id         = data.aws_vpc.docker-vpc.id
}

resource "aws_subnet" "docker-subnet2" {
  vpc_id            = data.aws_vpc.docker-vpc.id
  cidr_block        = "10.1.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "docker-subnet2"
  }
}

resource "aws_route_table_association" "docker-subnet2" {
  subnet_id      = aws_subnet.docker-subnet2.id
  route_table_id = data.aws_route_table.docker-vpc-rt.id
}

