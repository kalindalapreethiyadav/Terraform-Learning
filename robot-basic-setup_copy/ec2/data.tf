data "aws_ami" "AMI-Ansible-with-base" {
  most_recent      = true
  name_regex       = "AMI-Ansible-with-base"
  owners           = ["self"]
}

