# calling ec2Module
module "ec2" {
    source   = "./ec2"
    sg       = module.sg.sgid            #Step2 Passing the info to the module that needs this variable
}

#calling sgModule
module "sg" {
    source   = "./sg"
}