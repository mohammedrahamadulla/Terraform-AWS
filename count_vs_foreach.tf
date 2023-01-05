# Creating buckets using count function
resource "aws_s3_bucket" "multiplebuckets" {
  count  = 3
  bucket = lower("RRRKFGVIKRAM${count.index + 1}")

  tags = {
    Name = lower("RRRKFGVIKRAM${count.index + 1}")
  }
}

# Creating buckets using foreach function
locals {
  Standard_tags = {
    buck1 = "buck1rrrkgfvikram"
    buck2 = "buck2rrrkgfvikram"
    buck3 = "buck3rrrkgfvikram"
  }
}

resource "aws_s3_bucket" "foreachbuckets" {
  for_each = local.Standard_tags
  bucket   = each.value
  tags = {
    Name = each.value
  }
}
