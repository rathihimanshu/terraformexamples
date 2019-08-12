terraform {
  backend "s3" {
    bucket = "myterraformprojectstatefile"
    key = "statefiles/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraformstatelock"
  }
}

provider "aws" {
  region = var.region
}
resource "aws_iam_user" "demouser" {
  name = "demouser"
}