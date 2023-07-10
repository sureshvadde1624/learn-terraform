terraform {
  backend "s3" {
    bucket = "sureshdevops-terraform"
    key    = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "myec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "myec2"
  }
}