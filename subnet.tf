resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.vpc_name}-public_subnet1"
    Owner = "AWSDEVOPS01"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.vpc_name}-public_subnet2"
    Owner = "AWSDEVOPS01"
  }
}

resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "${var.vpc_name}-public_subnet3"
    Owner = "AWSDEVOPS01"
  }

}
