

resource "aws_instance" "preethi-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "my-no01-ec2"
    ENV = "dev"
    project = "robot"
  }
}

output "privateip" {
  value = aws_instance.preethi-ec2.private_ip
}



resource "aws_security_group" "allow_ssh_prrethi" {
  name        = "allow_preethi"
  description = "Allow ssh inbound traffic"

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
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
    Name = "allow_ssh"
  }
}