

resource "aws_instance" "preethi-ec2" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t3.micro"

  tags = {
    Name = "my-first-ec2"
    ENV = "dev"
    project = "robot"
  }
}

output "privateip" {
  value = aws_instance.preethi-ec2.private_ip
}