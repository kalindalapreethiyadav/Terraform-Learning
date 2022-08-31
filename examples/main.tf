#This is rooot module
#we are calling modules from one moduele to another module
#we are specifying it in root module in order to perform above

module "ec2" {
  source = "./ec2"
  sg = module.sg.sg_id   
}

module "sg" {
    source = "./sg" #declaring the module in root module

}

 #calling output of in ec2 module varibale pub-ip


output "pub-ip" {
  value = module.ec2.pub-ip
}