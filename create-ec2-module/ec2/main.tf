resource "aws_instance" "preethi_vm_ec2" {
  ami                     = data.aws_ami.LabImage.image_id
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]
}
variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi_vm_ec2.public_ip
}