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