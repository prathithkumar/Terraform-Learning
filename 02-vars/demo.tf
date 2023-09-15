# declaring a variable
variable "sample" {
    default = "Hello world"
}

# printing an output
output "op" {
    value = var.sample
}

# when we to print a variable in group of words.
output "ops" {
    value = "My first msg is ${var.sample}"
}

