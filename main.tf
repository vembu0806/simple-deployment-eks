provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc.tf"
}

module "eks" {
  source = "./eks.tf"
}

module "iam" {
  source = "./iam.tf"
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_endpoint" {
  value = module.eks.cluster_endpoint
}
