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

# Declaring a Map variable
variable "sample_maps" {
    default = {
        batch    = "SITA"
        Mode     =  "Online"
        Training = "Permanent Employment"
    }
}

# Printing a map variable
output "sample_maps_op" {
    value = "${var.sample_maps["batch"]} has great scope of opportunites and this is completely ${var.sample_maps["Mode"]} Training"
}

# Declaring an empty variable and passing the value in the *_tfvars file

variable "city" {}

output "city_name" {
    value = "Name of the city is ${var.city}"
}

# Didnt declare the variable

variable "state" {}

output "state_name" {
    value = var.state
}

variable "country" {}

output "country_name" {
    value = "Name of our country is ${var.country}"
}
