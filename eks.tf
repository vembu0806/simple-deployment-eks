module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.26"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  node_groups = {
    default = {
      desired_capacity = var.desired_capacity
      max_size         = 4
      min_size         = 1
      instance_type    = var.node_instance_type
    }
  }
}
