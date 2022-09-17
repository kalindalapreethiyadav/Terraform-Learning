resource "aws_spot_instance_request" "frontend" {
  ami                      = data.aws_ami.ami-with-ansible.image_id
  instance_type            = "t3.micro"
  wait_for_fulfillment     = true
  vpc_security_group_ids   = [aws_security_group.allow_all_sg.id]

  tags = {
    Name = var.COMPONENT
  }
}

resource "null_resource" "null" {
  triggers = {    
        a = timestamp()  # Everytime you run, when compared to the last time, the time changes, so it will be triggered all the time.
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
}
