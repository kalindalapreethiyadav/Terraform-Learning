terraform {
  backend "s3" {
    bucket = "robotshop-files"
    key    = "robotshop-files/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
