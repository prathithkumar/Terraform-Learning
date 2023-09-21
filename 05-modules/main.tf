# calling ec2Module
module "ec2" {
    source   = "./ec2"
}

#calling sgModule
module "sg" {
    source   = "./sg"
}