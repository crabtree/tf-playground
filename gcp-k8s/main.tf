resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_network_name
  auto_create_subnetworks = true
}


resource "google_container_cluster" "primary" {
  name     = var.cluster_name

  remove_default_node_pool = true
  initial_node_count       = 1

  network = google_compute_network.vpc_network.name
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "pool-0"
  cluster    = google_container_cluster.primary.name
  
  autoscaling {
    min_node_count = var.node_pool_min_count
    max_node_count = var.node_pool_max_count
  }

  node_config {
    machine_type = var.node_pool_machine_type
  }
}
