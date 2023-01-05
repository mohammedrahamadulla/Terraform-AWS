locals {
  inbound_ports  = [80, 443, 22, 3389, 3306, 1433, 5000, 5001, 5002]
  outbound_ports = [80, 443, 8443, 8080]
}
resource "aws_security_group" "Testing_with_dynamicblock" {
  name        = "Testing_with_dynamicblock"
  description = "Testing_with_dynamicblock"
  vpc_id      = aws_vpc.testvpc01.id

  dynamic "ingress" {
    for_each = local.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = local.outbound_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
