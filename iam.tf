module "iam" {
  source = "terraform-aws-modules/iam/aws//modules/eks"
  cluster_name = var.cluster_name
}
