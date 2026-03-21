resource "google_storage_bucket" "this" {
  name     = var.bucket_name
  location = var.location

  # Senior Practice: Enforce security standards in the module
  uniform_bucket_level_access = true
  storage_class               = "STANDARD"

  labels = var.labels
}
