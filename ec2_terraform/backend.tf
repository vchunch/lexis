resource "aws_s3_bucket" "terraform_state" {
  bucket = "tfbackend-lexis-nexis-bucket"

  versioning {
    enabled = true
  }

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}

terraform {
  backend "s3" {
    bucket         = "tfbackend-lexis-nexis-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tfbackend-lexis-nexis-tfstatelock"
  }
}