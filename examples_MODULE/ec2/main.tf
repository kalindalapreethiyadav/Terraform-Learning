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
      #cd /home/centos/Ansible/
      "ansible-playbook tags_sample.yml"
    ]
  }
}

variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi1-ec2.public_ip
}