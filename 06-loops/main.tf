variable "d1" {
  default = 5
}

resource "null_resource" "nothing" {
  count = var.d1
}

variable "d2" {
  default = ["apple","banana"]
}

resource "null_resource" "d2" {
  count = length(var.d2)
}

variable "d3" {
  default ={
    apple={
      name="apple"
      count=5
    },
    banana={
      name="banana"
      count=2
    }
  }
}

resource "null_resource" "d3" {            # 2 resources
  for_each = var.d3
}