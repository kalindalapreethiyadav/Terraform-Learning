resource "aws_instance" "preethi_vm-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [var.sg]
}
 
variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi_vm-ec2.public_ip
}