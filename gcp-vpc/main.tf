variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "Google cloud region"
}

variable "zone" {
    type         = string
    default      = "europe-west1-c"
    description  = "Google cloud zone"
}

provider "google" {
  region      = var.region
  zone        = var.zone
}

resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = "true"
}
