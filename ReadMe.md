Since we cannot use backend.json, run awws configure and provide credential.    


1.Data Sources
- How to deploy infra to a VPC which is not created by Terraform. data "aws_vpc" "docker-vpc"
- How can we import a state and deploy infra over it.

data "terraform_remote_state" "AwsDevops-import" {
  backend = "s3"
  config = {
    bucket = "terraformdevs3bucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}