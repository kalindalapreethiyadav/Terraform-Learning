resource "aws_instance" "preethi_vm_ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]

 provisioner "remote-exec" {
      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = self.public_ip
      }
    inline = [
       "ansible-pull -U https://github.com/kalindalapreethiyadav/Ansible.git -e COMPONENT=frontend -e ENV=dev -e TAG_NAME=0.1.1 roboshop.yml"
      ]
    }
}

variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi_vm_ec2.public_ip
}