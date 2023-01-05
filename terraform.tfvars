vpc_name                   = "RRR"
cidr_block                 = "10.95.0.0/16"
env                        = "Dev"
public_subnet_cidr_blocks  = ["10.95.1.0/24", "10.95.2.0/24", "10.95.3.0/24", "10.95.4.0/24", "10.95.5.0/24"]
private_subnet_cidr_blocks = ["10.95.10.0/24", "10.95.20.0/24", "10.95.30.0/24", "10.95.40.0/24", "10.95.50.0/24"]
azs                        = ["us-east-1a", "us-east-1b", "us-east-1c"]
imagename                  = "ami-0a6b2839d44d781b2"
instance_type              = "t2.micro"
key_name                   = "Laptop_key2"
region                     = "us-east-1"
ami = {
  us-east-1 = "ami-08d4ac5b634553e16"
  us-east-2 = "ami-0960abb70c8bb45f3"
}