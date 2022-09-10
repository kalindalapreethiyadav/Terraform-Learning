terraform {
    backend "s3" {
        bucket  = "robot-bucket-preethi"
        key     = "modules_example/terraform.tfstate"
        region    = "us-east-1"

    }
}

provider "aws" {
    region = "us-east-1"
  
}