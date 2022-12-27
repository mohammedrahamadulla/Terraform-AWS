data "terraform_remote_state" "AwsDevops-import" {
  backend = "s3"
  config = {
    bucket = "terraformdevs3bucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}



# # Terraform >= 0.12
# resource "aws_instance" "foo" {
#   # ...
#   subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
# }

# # Terraform <= 0.11
# resource "aws_instance" "foo" {
#   # ...
#   subnet_id = "${data.terraform_remote_state.vpc.subnet_id}"
# }