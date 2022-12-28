resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "awsdevopsflowlogsbucket001${local.bucket_name}"

  tags = {
    Name = "awsdevopsvpcflowlogsbucket001${local.vpc_name_lower}"
  }
}