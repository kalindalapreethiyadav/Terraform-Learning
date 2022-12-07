terraform {
  backend "s3" {
    bucket = "preethii-rf-remote-state-bucket"
    key    = "sample1/terraform.tfstate"
    region = "us-east-1"
  }
}