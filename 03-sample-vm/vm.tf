resource "aws_instance" "app" {
  ami           = "ami-0f5dbf035a6aca15c"
  instance_type = "t3.medium"

  tags = {
    Name = "My-Terraform-Instance"
  }
}