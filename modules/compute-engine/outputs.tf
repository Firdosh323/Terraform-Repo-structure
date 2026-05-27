output "instance_name" {
  value = google_compute_instance.main.name
}

output "instance_self_link" {
  value = google_compute_instance.main.self_link
}

output "instance_external_ip" {
  value = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}