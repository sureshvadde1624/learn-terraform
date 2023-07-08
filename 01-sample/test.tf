resource "aws_instance" "myec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    name= "myec2"
  }
}