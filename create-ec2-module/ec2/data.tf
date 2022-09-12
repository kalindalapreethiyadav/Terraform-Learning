data "aws_ami" "LabImage" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]
}

