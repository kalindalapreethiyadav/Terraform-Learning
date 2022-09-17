terraform {
  backend "s3" {
    bucket = "b49-rf-remote-state-bucket"
    key    = "robot-basic-setup_New/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
