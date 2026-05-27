output "network_name" {
	value = module.vpc.network_name
}

output "subnetwork_name" {
	value = module.vpc.subnetwork_name
}

output "instance_name" {
	value = module.compute_engine.instance_name
}

output "instance_external_ip" {
	value = module.compute_engine.instance_external_ip
}

output "gke_cluster_name" {
	value = var.enable_gke ? module.gke[0].cluster_name : null
}
