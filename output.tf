output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "node_security_group" {
  value = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}
