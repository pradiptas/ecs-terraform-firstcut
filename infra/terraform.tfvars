ecs_cluster_name   = "ecs-cluster-pradipta-06"
capacity_providers = ["FARGATE", "FARGATE_SPOT"]
resource_tags = {
  "Environment"  = "Development"
  "Account_Type" = "Personal"
  "Owner"        = "Pradipta"
}