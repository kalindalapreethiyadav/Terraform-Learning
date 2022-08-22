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


#----------------

variable "var_name1" {
    default = ["devops", 100, true] #one key having mutiple values
}

output "displaying_output" {
    value = "priting ${var.var_name1[0]} and value and status is ${var.var_name1[1]} ${var.var_name1[2]}"
}
