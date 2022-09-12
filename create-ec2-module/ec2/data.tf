data "aws_ami" "LabImage" {
  most_recent = true
    name   = "app-server"
    name_regex       = "DevOps-LabImage-CentOS7"
}

