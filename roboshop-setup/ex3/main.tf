//mature code

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_spot_instance_request" "ec2instances" {
  #count=5
  #count = length(var.instances)
  for_each = var.instances
  ami = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = each.value["name"]
  }

}

variable "instances" {
        default = {
          catalogue = {
            name = "catalogue"
            type = "t3.micro"
          }
          user = {
            name = "user"
            type = "t2.micro"
          }
        }
}

#output "ec2" {
#  value = aws_spot_instance_request.ec2instances["catalogue"].private_ip
#}

output "ec2" {
  value = [for k,v in aws_spot_instance_request.ec2instances : "${k} - ${v.public_ip}" ]
}