terraform {
  backend "s3" {
    bucket         = "sayantan-tic-tac-toe"
    key            = "EKS/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "eks-terraform-lock"
  }
}