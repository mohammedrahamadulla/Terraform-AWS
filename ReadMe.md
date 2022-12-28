##To Configure
$env:TF_LOG="TRANCE"
$env:TF_LOG="DEBUG"
$env:TF_LOG_PATH=""

##To Remove
$env:TF_LOG=""
$env:TF_LOG_PATH=""


1.Data Sources
- How to deploy infra to a VPC which is not created by Terraform. data "aws_vpc" "docker-vpc"
- How can we import a state and deploy infra over it.




variables :

whenever that code deploying multiple times and providing different values then you must use or declare the variables.