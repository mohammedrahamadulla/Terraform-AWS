output "vpc_id" {
  value     = data.terraform_remote_state.AwsDevops-import.outputs.vpc_id
  sensitive = false
}

output "subnet_1" {
  value     = data.terraform_remote_state.AwsDevops-import.outputs.subnet1_id
  sensitive = false
}

output "subnet_2" {
  value     = data.terraform_remote_state.AwsDevops-import.outputs.subnet2_id
  sensitive = false
}

output "subnet_3" {
  value     = data.terraform_remote_state.AwsDevops-import.outputs.subnet3_id
  sensitive = false
}

output "sg_id" {
  value     = data.terraform_remote_state.AwsDevops-import.outputs.sg_id
  sensitive = false
}