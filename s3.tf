resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "awsdevopsflowlogsbucket"

  tags = {
    Name = "awsdevopsvpcflowlogsbucket"
  }
}
