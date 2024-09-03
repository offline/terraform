terraform {
  required_version = ">= 1.0.0, <2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.16"
    }
  }
}

module "vpc1" {
  source              = "git::git@github.com:offline/terraform-modules-test.git//modules/kubernetes/vpc?ref=752bb5c"
  cluster_name        = var.cluster_name_vpc1
  main_route_table_id = var.main_route_table_id
  vpc_id              = var.vpc_id
  private_subnets     = var.kubernetes_private_subnets_vpc1
  public_subnets      = var.kubernetes_public_subnets_vpc1
}

module "vpc2" {
  source              = "git::git@github.com:offline/terraform-modules-test.git//modules/kubernetes/vpc?ref=752bb5c"
  cluster_name        = var.cluster_name_vpc2
  main_route_table_id = var.main_route_table_id
  vpc_id              = var.vpc_id
  private_subnets     = var.kubernetes_private_subnets_vpc2
  public_subnets      = var.kubernetes_public_subnets_vpc2
}


output "private_subnet_ids_vpc1" {
  value = module.vpc1.private_subnet_ids
}

output "public_subnet_ids_vpc1" {
  value = module.vpc1.public_subnet_ids
}


output "private_subnet_ids_vpc2" {
  value = module.vpc2.private_subnet_ids
}

output "public_subnet_ids_vpc2" {
  value = module.vpc2.public_subnet_ids
}

