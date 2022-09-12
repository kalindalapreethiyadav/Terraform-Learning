data "aws_ami" "LabImage" {
  most_recent = true
    Name   = "app-server"
    Tested = "true"
    name_regex       = "DevOps-LabImage-CentOS7"
}

