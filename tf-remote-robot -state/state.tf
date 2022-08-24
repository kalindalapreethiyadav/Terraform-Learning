terraform {
    backend =  "s3" {
        bucket  = "robot-bucket-preethi"
        key     = "sample/terraform.tfstate"
        name    = "us-east-1"

    }
}