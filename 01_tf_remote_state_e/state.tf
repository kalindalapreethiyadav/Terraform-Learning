terraform {
  backend "s3" {
    bucket = "b49-rf-remote-state-bucket"
    key    = "sample1/terraform.tfstate"
    region = "us-east-1"
  }
}