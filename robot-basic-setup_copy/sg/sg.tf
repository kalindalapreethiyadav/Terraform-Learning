# Creating security group
resource "aws_security_group" "allow_all" {
  name        = "allow_${var.COMPONENT}"
  description = "Allow all inbound traffic"

  ingress {
    description      = "SSH to VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_${var.COMPONENT}"
  }
}
