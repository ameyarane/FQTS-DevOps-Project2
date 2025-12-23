variable "vpc_id" {
   //default = "vpc-5f680722"
   type = string
}

variable "sg_name" {
   //default = "vpc-5f680722"
   type = string
}
variable "env" {
   //default = "vpc-5f680722"
   type = string
}
variable "co_name" {
   //default = "vpc-5f680722"
   type = string
}
locals {
  tags = {
    env     = var.env
    co_name = var.co_name
    Name    = "${var.co_name}-${var.env}-${var.sg_name}"
  }
}