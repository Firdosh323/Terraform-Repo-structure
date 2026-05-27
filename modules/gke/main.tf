resource "google_container_cluster" "main" {
  name               = var.cluster_name
  location           = var.region
  project            = var.project_id
  network            = var.network
  subnetwork         = var.subnetwork
  initial_node_count = 1
  deletion_protection = false

  node_config {
    machine_type = var.machine_type
  }
}