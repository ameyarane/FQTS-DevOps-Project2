module "eks-iam" {
    source = "../../Modules/iam/v0"
    vpc_id                 = var.vpc_id
    env                    = var.env
    co_name                = var.co_name
    instance_profile_name  = var.instance_profile_name
    policy_name            = var.policy_name
    worker_role_name       = var.worker_role_name
    master_role_name       = var.master_role_name
}
