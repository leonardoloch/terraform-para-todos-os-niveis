variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "ambiente" {
    type = string
    default = "staging"
}
