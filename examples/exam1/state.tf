terraform {
    backend "s3" {
        bucket  = "robot-bucket-preethi"
        key     = "sample2/terraform.tfstate"
        region    = "us-east-1"

    }
}
