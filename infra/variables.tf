variable "ecs_cluster_name" {
  description = "Name of ECS Cluster"
  type        = string
  default     = "pradipta-ecs-cluster-terraform-01-dev"
}

variable "capacity_providers" {
  description = "Capacity Providers"
  type        = list(string)
  default     = []
}

variable "resource_tags" {
  description = "AWS Resource Tags"
  type        = map(string)
  default     = {}
}
