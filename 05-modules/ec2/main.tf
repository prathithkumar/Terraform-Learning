# Creating EC2 
resource "aws_instance" "moapp" {
  ami                       = "ami-0f5dbf035a6aca15c"
  instance_type             = "t3.medium"
  vpc_security_group_ids    = [var.sg]

    tags = {
    Name           = "Module-Instance"
    }
}

variable "sg"