variable "cluster_name_vpc1" {
  type = string
}

variable "cluster_name_vpc2" {
  type = string
}

variable "main_route_table_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "kubernetes_private_subnets_vpc1" {
  type = list(object({
    cidr = string
    zone = string
  }))
}

variable "kubernetes_public_subnets_vpc1" {
  type = list(object({
    cidr = string
    zone = string
  }))
}


variable "kubernetes_private_subnets_vpc2" {
  type = list(object({
    cidr = string
    zone = string
  }))
}

variable "kubernetes_public_subnets_vpc2" {
  type = list(object({
    cidr = string
    zone = string
  }))
}

