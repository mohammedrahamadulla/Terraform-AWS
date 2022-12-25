terraform {
  backend "s3" {
    bucket         = "terraformdevs3bucket"
    key            = "myterraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locking"
    encrypt        = true
  }
}



# resource "aws_s3_bucket" "statebucket" {
#   bucket = "terraformdevs3bucket"

#   tags = {
#     Name        = "terraformdevs3bucket"
#     Environment = "Dev"
#   }
# }