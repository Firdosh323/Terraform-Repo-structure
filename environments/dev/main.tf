locals {
  name_prefix = "gcp-${var.environment}"
}

module "vpc" {
  source = "../../modules/vpc"

  project_id   = var.project_id
  region       = var.region
  network_name = "${local.name_prefix}-vpc"
  subnet_name  = "${local.name_prefix}-subnet"
  subnet_cidr  = var.subnet_cidr
}

module "compute_engine" {
  source = "../../modules/compute-engine"

  project_id    = var.project_id
  zone          = var.zone
  instance_name = var.instance_name
  machine_type  = var.machine_type
  subnetwork    = module.vpc.subnetwork_self_link
  boot_image    = var.boot_image
}

# module "compute_engine_2" {
# 	source = "../../modules/compute-engine"

# 	project_id    = var.project_id
# 	zone          = var.zone
# 	instance_name = var.instance_name_2
# 	machine_type  = var.machine_type
# 	subnetwork    = module.vpc.subnetwork_self_link
# 	boot_image    = var.boot_image
# }

module "gke" {
  count  = var.enable_gke ? 1 : 0
  source = "../../modules/gke"

  project_id   = var.project_id
  region       = var.region
  cluster_name = "${local.name_prefix}-gke"
  network      = module.vpc.network_self_link
  subnetwork   = module.vpc.subnetwork_self_link
  machine_type = var.gke_machine_type
}
