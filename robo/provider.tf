terraform {
  backend "s3" {
   bucket  = "robot-bucket-preethi"
        key     = "modules_exam_recap/terraform.tfstate"
        region    = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}