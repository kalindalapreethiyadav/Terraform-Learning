terraform {
  backend "s3" {
   bucket = "terraform-state"
   key    = "terraform.tfstate"
   region    = "us-east-1"
   role_arn = "arn:aws:iam::185303955401:instance-profile/b49_full_access/terraformer"
  }
}

provider "aws" {
  region = "us-east-1"
}