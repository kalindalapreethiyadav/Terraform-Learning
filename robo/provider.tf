terraform {
  backend "s3" {
   bucket = "preethi-folder"
   key    = "terraform.tfstate"
   region    = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}