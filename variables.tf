#Declaring the varaible
variable "var_name" {
    default = "helloooo HIIIII GOOD"
}


#Output sample secanior one :
output "third_var" {
    value = "Printing the value ${var.var_name}"
}

#Output sample secanior two :
output "var_name_output" {
    value = var.var_name
}