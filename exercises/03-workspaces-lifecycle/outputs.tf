output "bucket_url" {
  value       = google_storage_bucket.state_protected_bucket.url
  description = "The URL of the created bucket"
}

output "current_workspace" {
  value       = terraform.workspace
  description = "The active Terraform workspace"
}
