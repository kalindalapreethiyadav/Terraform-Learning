variable "var_name" {
    default = "helloooo HIIIII GOOD"
}

variable "secnd_var" {
    type = string
}

output "var_name_output" {
    value = var.var_name
}