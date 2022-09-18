resource "aws_spot_instance_request" "cheap-worker" {
  ami                      = data.aws_ami.ami-with-ansible.image_id
  instance_type            = "t3.micro"
  wait_for_fulfillment     = true
  vpc_security_group_ids   = [aws_security_group.allow_all_sg.id]

  tags = {
    Name = var.COMPONENT
  }
}
# provisoner will run only onces i.e first time, And if any tasks in provisoner code at remot server
#fails than TERRAFORM consider as "resource" also failure even if it is successful

#so we are creating a duplicate provisoner 

resource "null_resource" "null" { #null_resoource that is empty resource creater
  triggers =  {
    a= timestamp() #everytime time chnages and triigers all the time
  } 
 provisioner "remote-exec" {

      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
       # host     = self.public_ip
       host = aws_spot_instance_request.cheap-worker.private_ip
      }

    inline = [
        "ansible-pull -U https://github.com/kalindalapreethiyadav/Ansible.git roboshop.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev -e TAG_NAME=${var.APP_VERSION}"
      ]
    }
}