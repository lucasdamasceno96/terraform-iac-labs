output "vm_external_ip" {
  description = "Public IP of the instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "used_zone" {
  description = "The zone selected by the Data Source"
  value       = data.google_compute_zones.available.names[0]
}

output "project_id" {
  description = "The project ID used in this deployment"
  value       = var.project_id
}
