
module "eks" {
    source            = "../../Modules/eks/v0"
    env               = var.env
    co_name           = var.co_name
    vpc_id            = var.vpc_id
    subnet_ids        = var.subnet_ids
    sg_ids            = var.sg_ids
    eks_name          = var.eks_name
    node_group_name   = var.node_group_name
    master_role_arn   = var.master_role_arn
    capacity_type     = var.capacity_type
    disk_size         = var.disk_size
    instance_type     = var.instance_type
    ec2_ssh_key       = var.ec2_ssh_key
    worker_role_arn   = var.worker_role_arn
    desired_size      = var.desired_size
    max_size          = var.max_size
    min_size          = var.min_size
    }

