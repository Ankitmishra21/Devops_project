variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "region" {
  description = "AWS region for the EKS cluster"
}

variable "vpc_id" {
  description = "VPC where the EKS cluster will be deployed"
}

variable "subnets" {
  description = "Subnet IDs for EKS worker nodes"
  type        = list(string)
}
