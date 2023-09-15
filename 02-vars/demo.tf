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

variable "number" {
     default = 100
}

output "op_number" {
    value = var.number
}

# Declaring a list variable
variable "sample_list" {
    default = [
        "DevOps",
        55,
        "Prathith",
        "04125AMCET"
    ]
}

output "print_list" {
    value = "Welcome To ${var.sample_list[0]} Training and batch timings are ${var.sample_list[3]} and the batch number is ${var.sample_list[1]}"
}