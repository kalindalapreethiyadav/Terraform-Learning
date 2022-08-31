resource "aws_instance" "preethi1-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [var.sg]
}

variable "sg" {}

output "public-ip" {
    value = aws_instance.preethi1-ec2.public_ip
}