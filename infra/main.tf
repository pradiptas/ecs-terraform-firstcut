terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "ecs" {
  source = "terraform-aws-modules/ecs/aws"
  #create_ecs = false

  name = var.ecs_cluster_name

  container_insights = true

  capacity_providers = var.capacity_providers

  default_capacity_provider_strategy = [
    {
      capacity_provider = "FARGATE_SPOT"
    }
  ]

  tags = {
    Environment = "Development"
  }
}