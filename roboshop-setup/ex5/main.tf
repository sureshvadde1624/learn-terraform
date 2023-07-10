module "ec2" {
  for_each = var.instances
  component = each.value["name"]
  instance_type = each.value["type"]
  source = "./ec2"
  sg_id = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

module "route53" {
  for_each = var.instances
  component = each.value["name"]
  source = "./route53"
  private_ip = module.ec2[each.value["name"]].private_ip
}