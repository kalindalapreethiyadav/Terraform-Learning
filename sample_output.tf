output "sample_output"  {
    value = "hello world"
}

#calling varaible that presentin "".tfvars" files

variable "state" {} # Need to declare empty vartable before it calling

output "detail_state" {
    value = "Name of the state : ${var.state}"
}

variable "country" {}

output "detail_country" {
    value = "Name of the country : ${var.country}"
}