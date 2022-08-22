
variable "var_name2" {
    default = {
        course = "Devops",
        duration = 80,
        status = false
        topic = "terraform"
    }
}

output "displaying_output" {
    value = "printing ${var.var_name2.course} and other details are ${var.var_name2.duration} ${var.var_name2.status} ${var.var_name2.topic}"
}