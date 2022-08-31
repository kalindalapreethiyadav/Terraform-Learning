#This is rooot module
#we are calling modules from one moduele to another module
#we are specifying it in root module in order to perform above

module "ec2" {
  source = "./ec2"
}

module "sg" {
    source = "./sg"
}

output "ipaddress_value" {
    value = aws_instance.preethi1-ec2.public_ip
}