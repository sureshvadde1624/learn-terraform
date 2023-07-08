variable "sample" {
  default = "Hello World"
}

output "out" {
  value = var.sample
}