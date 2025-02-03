variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS name"
  default     = "simple-eks-cluster"
}

variable "node_instance_type" {
  description = "Worker nodes Instance type"
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Capacity of worker nodes"
  default     = 2
}
