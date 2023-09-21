resource "aws_instance" "app" {
  ami           = "ami-0f5dbf035a6aca15c"
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-Instance"
  }
}

output "private_ip_address" {
    value = aws_instance.app.private_dns
}

# Create Security group

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from Internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}