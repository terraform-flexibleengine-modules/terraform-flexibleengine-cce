variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
}

variable "cluster_version" {
  description = "Version of the cluster"
  type        = string
}

variable "cluster_desc" {
  description = "Description of the cluster"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone used to deploy"
  default     = "eu-west-0a"
  type        = string
}

# CCE2 vars

variable "cluster_flavor" {
  description = "Flavor of the CCE2 Cluster"
  type        = string
  #o	cce.s1.large : no HA > 1000nodes
  #o	cce.s1.medium : no HA 50 à 200 nodes
  #o	cce.s1.small : no HA up to 50 nodes
  #o	cce.s2.large : HA > 1000nodes
  #o	cce.s2.medium : HA 50 à 200 nodes
  #o	cce.s2.small : HA up to 50 nodes
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "network_id" {
  description = "ID of the Network"
  type        = string
}

variable "node_os" {
  description = "Operating System of the CCE Worker Node"
  type        = string
}

variable "nodes_list" {
  description = "Nodes list of the CCE2 Cluster"
  default     = []
  type = list(object({
    node_name         = string
    node_flavor       = string
    key_pair          = string
    availability_zone = string
    root_volume_size  = number
    root_volume_type  = string
    data_volume_size  = number
    data_volume_type  = string
  }))
}

