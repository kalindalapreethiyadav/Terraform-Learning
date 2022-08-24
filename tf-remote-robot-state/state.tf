terraform {
    backend "s3" {
        bucket  = "robot-bucket-preethi"
        key     = "sample/terraform.tfstate"
        region    = "us-east-1"

    }
}
