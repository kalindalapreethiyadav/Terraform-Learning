

variable "var_name2" {
    default = {
        course = "Devops",
        duration = 80,
        status = false
        topic = "terraform"
    }
}

output "displaying_output" {
    value = "priting ${var.var_name2[0]} and other details are : ${var.var_name2[1]} ${var.var_name2[2]} ${var.var_name2[3]}}"
}