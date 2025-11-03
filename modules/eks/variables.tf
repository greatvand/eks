variable "cluster_name" {
    description = "The name of the EKS cluster"
    type        = string
}

variable "cluster_version" {
    description = "The Kubernetes version for the EKS cluster"
    type        = string
}

variable "vpc_id" {
    description = "The VPC ID where the EKS cluster will be deployed"
    type        = string
}

variable "subnet_ids" {
    description = "A list of subnet IDs for the EKS node groups"
    type        = list(string)
}

variable "node_groups" {
    description = "A map of node group configurations"
    type = map(object({
        instance_types = list(string)
        capacity_type  = string
        scaling_config = object({
            desired_size = number
            max_size     = number
            min_size     = number
        })
    }))
}