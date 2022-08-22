output "sample_output"  {
    value = "hello world"
}

#calling varaible that presentin "".tfvars" files

variable "state" {}

variable "country" {}


output detail_state {
    value = "Name of the state : ${var.state}"
}

output detail_country {
    value = "Name of the country : ${var.country}"
}