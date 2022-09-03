resource "aws_instance" "preethi1-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [var.sg]

 provisioner "remote-exec" {
      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        # host     = self.public_ip
        host     = aws_spot_instance_request.cheap_worker.private_ip 
      } 
    inline = [
     "ansible-pull -U https://github.com/b49-clouddevops/ansible.git -e COMPONENT=${var.COMPONENT} -e ENV=dev -e TAG_NAME=${var.APP_VERSION} roboshop.yml"
      ]
    }
}

variable "sg" {}

output "pub-ip" {
    value = aws_instance.preethi1-ec2.public_ip
}