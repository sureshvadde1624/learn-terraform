resource "aws_spot_instance_request" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "frontend-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.frontend.private_ip]
}

resource "aws_spot_instance_request" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "mongodb-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.mongodb.private_ip]
}

resource "aws_spot_instance_request" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "catalogue-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.catalogue.private_ip]
}

resource "aws_spot_instance_request" "redis" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "redis-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.redis.private_ip]
}

resource "aws_spot_instance_request" "user" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "user-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.user.private_ip]
}

resource "aws_spot_instance_request" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "cart-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.cart.private_ip]
}

resource "aws_spot_instance_request" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "mysql-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.mysql.private_ip]
}

resource "aws_spot_instance_request" "shipping" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids =["sg-0257885fb2178409f"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z03073111Y2YWOAAWC7A4"
  name    = "shipping-dev.sureshdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.shipping.private_ip]
}

