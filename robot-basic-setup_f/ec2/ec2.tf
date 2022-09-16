resource "aws_spot_instance_request" "cheap_worker" {
  ami           = data.aws_ami.ami-with-ansible.image_id
  instance_type = "t3.micro"
  wait_for_fulfillment = true
  vpc_security_group_ids = [aws_security_group.allow_all_preek.id]
  tags = {
    Name = var.COMPONENT
  }
}

 provisioner "remote-exec" {

      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = self.public_ip
      }

    inline = [
        "ansible-pull -U https://github.com/kalindalapreethiyadav/Ansible.git roboshop.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev -e TAG_NAME=${var.APP_VERSION}"
      ]
    }



output "pub-ip" {
    value = aws_instance.preethi_vm_ec2.public_ip
}