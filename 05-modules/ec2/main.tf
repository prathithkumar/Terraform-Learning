# Creating EC2 
resource "aws_instance" "web" {
    count          = length(var.instances)
    ami            = data.aws_ami.ami.image_id
    instance_type  = "t3.medium"

    tags = {
    Name           = "${var.instances[count.index]}"
    }
}