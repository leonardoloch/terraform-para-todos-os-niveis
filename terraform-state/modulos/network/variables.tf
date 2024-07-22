variable "resources-prefix" {
  type = string
  description = "prefixo dos nomes dos recursos"
}

variable "vpc_cidr_block" {
  type = string
  description = "faixa de ip para a vpc"
}

variable "subnet_cidr_block" {
    type = string   
    description = "faixa de ip para a subnet"
}