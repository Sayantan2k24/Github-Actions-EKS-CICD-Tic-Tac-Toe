# This file should be always run before ant other .tf file
provider "aws" {
  region = "ap-south-1"
}
# create s3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sayantan-tic-tac-toe" # change this
}

# configure state lock for eks .tfstate file.
resource "aws_dynamodb_table" "eks_terraform_lock" {
  name         = "eks-terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
