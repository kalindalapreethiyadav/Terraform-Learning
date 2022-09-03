resource "aws_instance" "preethi1-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [var.sg]

 provisioner "remote-exec" {

    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
    inline = [
    "ansible-playbook -i ${self.public_ip} -e EV=dev -e COMPONENT=frontend -e TAG_NAME=0.0.2 -e ansible_user=centos -e ansible_password=DevOps321 roboshop-push.yml"
    ]
  }
}

variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi1-ec2.public_ip
}