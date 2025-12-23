variable "vpc_id" {
   //default = "vpc-5f680722"
   type = string
}
variable "subnet_ids" {
   
   type = list
}
variable "sg_ids" {
   
   type = list
}
variable "eks_name" {
   //default = "vpc-5f680722"
   type = string
}
variable "env" {
   //default = "vpc-5f680722"
   type = string
}
variable "node_group_name" {
   //default = "vpc-5f680722"
   type = string
}
variable "master_role_arn" {
   //default = "vpc-5f680722"
   type = string
}
variable "capacity_type" {
   //default = "vpc-5f680722"
   type = string
}
variable "disk_size" {
   //default = "vpc-5f680722"
   type = string
}
variable "instance_type" {
   //default = "vpc-5f680722"
   type = list
   }
variable "ec2_ssh_key" {
   //default = "vpc-5f680722"
   type = string
}
variable "worker_role_arn" {
   //default = "vpc-5f680722"
   type = string
}

variable "co_name" {
   //default = "vpc-5f680722"
   type = string
}
variable "desired_size" {
   //default = "vpc-5f680722"
   type = string
   }
variable "max_size" {
   //default = "vpc-5f680722"
   type = string
   }
variable "min_size" {
   //default = "vpc-5f680722"
   type = string
   }
locals {
  tags = {
    env = var.env
    co_name = var.co_name
    
  }
}