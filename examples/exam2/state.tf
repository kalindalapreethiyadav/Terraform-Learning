terraform {
    backend "s3" {
        bucket  = "robot-bucket-preethi"
        key     = "sample3/terraform.tfstate"
        region    = "us-east-1"

    }
}
