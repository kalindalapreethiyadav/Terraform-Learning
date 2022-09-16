resource "aws_security_group" "allow_all_preek" {
  name        = "allow_all_${var.COMPONENT}"
  description = "Allow ssh inbound traffic"

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
    Name = "allow_all_${var.COMPONENT}"
  }
}

output "sg_id" {
   value = aws_security_group.allow_all_preek.id
}