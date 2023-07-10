data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_spot_instance_request" "ec2instances" {
  #count=5
  count = length(var.instances)
  ami = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = var.instances[count.index]
  }

}

variable "instances" {
  default = ["frontend","mongodb","catalogue","redis","user"]
}

output "out" {
  value = aws_spot_instance_request.ec2instances.*.private_ip
}