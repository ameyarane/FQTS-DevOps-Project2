
###############################################################################################################
resource "aws_eks_cluster" "eks" {
  name = "${var.co_name}-${var.env}-${var.eks_name}"
  role_arn = var.master_role_arn


  vpc_config {
    #subnet_ids = [var.subnet_ids[0],var.subnet_ids[1],var.subnet_ids[2]]
    subnet_ids      = var.subnet_ids
  }

  tags = merge(
    local.tags,
    {
      "Name" = "${var.co_name}-${var.env}-${var.eks_name}"
    }
  )


}
#################################################################################################################

resource "aws_eks_node_group" "backend" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "${var.co_name}-${var.env}-${var.node_group_name}"
  node_role_arn   = var.worker_role_arn
  #subnet_ids = [var.subnet_ids[0],var.subnet_ids[1],var.subnet_ids[2]]
  subnet_ids      = var.subnet_ids
  capacity_type   = var.capacity_type
  disk_size       = var.disk_size
  instance_types  = var.instance_type
  remote_access {
    ec2_ssh_key = var.ec2_ssh_key
    source_security_group_ids = var.sg_ids
  } 
  
  labels =  tomap({env = var.env})
  
  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  update_config {
    max_unavailable = 1
  }

  tags = merge(
    local.tags,
    {
      "Name" = aws_eks_cluster.eks.name
    }
  )


}
