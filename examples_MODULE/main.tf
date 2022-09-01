#This is rooot module
#we are calling modules from one moduele to another module
#we are specifying it in root module in order to perform above

module "ec2" {
  source = "./ec2"
  sg = module.sg.sg_id   
}

module "sg" {
    source = "./sg" #declaring the module in root module

  provisioner "remote-exec" {

    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
    inline = [
    "ansible-pull -U https://github.com/kalindalapreethiyadav/Ansible.git -e ansible_user=centos -e ansible_password=DevOps321 -e COMPONENT=frontend -e ENV=dev -e TAG_NAME=0.0.2 roboshop-push.yml"
    ]
  }
}

#calling output of in ec2 module varibale pub-ip
output "pub-ip" {
  value = module.ec2.pub-ip
}

