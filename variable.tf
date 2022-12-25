variable "cidr_block" {
  type        = string
  default     = "10.1.0.0/16"
  description = "CIDR Block for VPC"
}


variable "env" {
  type        = string
  default     = "Development"
  description = "Environment name for VPC"
}

variable "vpc_name" {
  type        = string
  default     = "Terraform_TestVpc_1"
  description = "Name for VPC"
}

variable "public_subnet1_cidr" {
  type        = string
  default     = "10.1.1.0/24"
  description = "CIDR Block for subnet"
}

variable "public_subnet2_cidr" {
  type        = string
  default     = "10.1.2.0/24"
  description = "CIDR Block for subnet"
}

variable "public_subnet3_cidr" {
  type        = string
  default     = "10.1.3.0/24"
  description = "CIDR Block for subnet"
}

