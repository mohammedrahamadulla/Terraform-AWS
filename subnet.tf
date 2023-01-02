resource "aws_subnet" "public_subnet" {
  #count             = 4 #[ 0, 1, 2] 
  count             = length(var.public_subnet_cidr_blocks)
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = element(var.public_subnet_cidr_blocks, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name  = "${local.vpc_name_lower}-public-subnet-${count.index + 1}"
    Owner = "AWSDEVOPS"
  }
}

resource "aws_subnet" "private_subnet" {
  #count             = 4 #[ 0, 1, 2] 
  count             = length(var.private_subnet_cidr_blocks)
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = element(var.private_subnet_cidr_blocks, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name  = "${local.vpc_name_lower}-private-subnet-${count.index + 1}"
    Owner = "AWSDEVOPS"
  }
}