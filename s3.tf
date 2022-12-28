resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "awsdevopsvpcflowlogsbucket001"

  tags = {
    Name        = "awsdevopsvpcflowlogsbucket001"
    Environment = "Dev"
  }
  #   depends_on = [
  #     aws_s3_bucket.awsdevopsone
  #   ]
  lifecycle {
    create_before_destroy = true
  }
}

# resource "aws_s3_bucket" "awsdevopsone" {
#   bucket = "awsdevopsone"

#   tags = {
#     Name        = "awsdevopsone"
#     Environment = "Dev"
#   }
#   depends_on = [
#     aws_s3_bucket.awsdevopstwo
#   ]
# }

# resource "aws_s3_bucket" "awsdevopstwo" {
#   bucket = "awsdevopstwo"

#   tags = {
#     Name        = "awsdevopstwo"
#     Environment = "Dev"
#   }
#   depends_on = [
#     aws_s3_bucket.awsdevopsthree
#   ]
# }

# resource "aws_s3_bucket" "awsdevopsthree" {
#   bucket = "awsdevopsthree"

#   tags = {
#     Name        = "awsdevopsthree"
#     Environment = "Dev"
#   }
# }