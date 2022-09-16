data "aws_ami" "ami-with-ansible" {
  most_recent      = true
  name_regex       = "ami-with-ansible"
  owners           = ["self"]
}

