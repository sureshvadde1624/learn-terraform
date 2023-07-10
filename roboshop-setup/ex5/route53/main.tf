resource "aws_route53_record" "record" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "${var.component}-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "component" {}

variable "private_ip" {}