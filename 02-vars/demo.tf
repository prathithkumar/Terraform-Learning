# declaring a variable
variable "sample" {
    default = "Hello world"
}

# printing an output
output "op" {
    value = var.sample
}
