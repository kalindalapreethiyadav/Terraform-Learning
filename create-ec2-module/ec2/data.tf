data "aws_ami" "centos7-ami-with-ansible" {
  most_recent      = true
  name_regex       = "centos7-ami-with-ansible"
  owners           = ["self"]
}

