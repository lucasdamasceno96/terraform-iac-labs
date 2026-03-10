# outputs.tf
output "network_self_link" {
  description = "The URI of the created network"
  value       = google_compute_network.vpc_network.self_link
}
