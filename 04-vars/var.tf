variable "sample" {
  default = "Hello World"
}

output "out" {
  value = var.sample
}

variable "sample1" {}

output "out1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}

variable "default" {
  default = "Hello"
}

output "default" {
  value = "variable default- ${var.default}"
}

variable "list" {
  default = [
    "Hello",
    1000,
    true,
    "World"
  ]
}

output "list" {
  value = "variable list- ${var.list[0]}"
}

variable "map" {
  default = {
    string = "Hello",
    number = 100,
    boolean = true
  }
}

output "map" {
  value = "variable map- ${var.map["string"]}"
}

variable "d1" {
  default = [
    {
      course_name="aws"
      trainer_name="raju"
    },
    {
      course_name="devops"
      trainer_name="ravi"
    }
  ]
}

output "course_names" {
  value = var.d1.*.course_name
}