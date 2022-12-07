variable "zone" {
    type         = string
    default      = "europe-west1-c"
    description  = "Google cloud zone"
}

variable "vpc_network_name" {
    type = string
    description = "VPC network name"
}

variable "cluster_name" {
    type = string
    description = "Cluster name"
}

variable "node_pool_min_count" {
    type = number
    description = "Node pool min count"
}

variable "node_pool_max_count" {
    type = number
    description = "Node pool max count"
}

variable "node_pool_machine_type" {
    type = string
    description = "Node pool machine type"
}
