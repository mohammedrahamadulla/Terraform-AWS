terraform {
  backend "s3" {
    bucket = "mohammedterraformbucket"
    key    = "workspace-devops.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-locking"
    # encrypt        = true
  }
}


