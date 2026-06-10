terraform {
  backend "s3" {
    bucket         = "terraform-state-103549976993"
    key            = "project/terraform.tfstate"
    region         = "ap-south-2"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

