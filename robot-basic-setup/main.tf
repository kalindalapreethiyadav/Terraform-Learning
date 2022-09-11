module "ec2" {
    source = "./ec2"
    sg = module.sg.sg_id
}

module "sg" {
    source = "./sg"
}

output "public_ip_address" {
    value = module.ec2.pub-ip
}
  