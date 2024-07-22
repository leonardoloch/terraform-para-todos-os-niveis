# module "network" {
#   source = "./modulos/network"
#   resources-prefix = var.ambiente
#   vpc_cidr_block = var.vpc_cidr_block
#   subnet_cidr_block = var.subnet_cidr_block
# }


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.9.0"
  name = "vpc"
  cidr = var.vpc_cidr_block

  azs             = ["us-west-1a"]
  public_subnets  = [var.subnet_cidr_block]
  map_public_ip_on_launch = true
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

resource "aws_security_group" "security_group" {
  name        = "permitir_trafego_ao_servidors"
  description = "Permitir acesso ao servidor"
  vpc_id      = module.vpc.vpc_id
  tags = {
    Name = "permitir_accesso_ao_servidor"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_80" {
  security_group_id = aws_security_group.security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}
