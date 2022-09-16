data "aws_ami" "base-ami" {
  most_recent      = true
  name_regex       = "base-with-ansible"
  owners           = ["self"]
}

