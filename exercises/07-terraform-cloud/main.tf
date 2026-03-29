resource "google_storage_bucket" "cloud_managed_bucket" {
  name     = "ascend-lab-hcp-cloud-${var.project_id}"
  location = var.region

  # Senior Practice: Always secure buckets
  public_access_prevention = "enforced"
}
