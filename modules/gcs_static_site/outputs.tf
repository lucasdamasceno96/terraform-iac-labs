output "bucket_self_link" {
  value       = google_storage_bucket.this.self_link
  description = "The URI of the created bucket"
}
