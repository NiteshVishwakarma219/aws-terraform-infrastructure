
terraform {
  backend "s3" {
    bucket         = "your-unique-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}