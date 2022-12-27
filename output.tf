output "vpc_id" {
  value     = aws_vpc.testvpc01.id
  sensitive = false
}

output "vpc_arn" {
  value     = aws_vpc.testvpc01.arn
  sensitive = false
}

output "subnet_1" {
  value     = aws_subnet.subnet1-public.id
  sensitive = false
}

output "subnet_2" {
  value     = aws_subnet.subnet2-public.id
  sensitive = false
}

output "subnet_3" {
  value     = aws_subnet.subnet2-public.id
  sensitive = false
} 

output "sg_id" {
  value     = aws_security_group.allow_all.id
  sensitive = false
}