# Best Practice: Use the terraform.workspace built-in variable to differentiate resources
locals {
  instance_name = "${var.bucket_prefix}-${terraform.workspace}"
}

resource "google_storage_bucket" "state_protected_bucket" {
  name          = local.instance_name
  location      = var.region
  force_destroy = false # Security: prevent accidental deletion of content

  uniform_bucket_level_access = true

  # Topic 8.2: Lifecycle rules
  lifecycle {
    # Prevents 'terraform destroy' or replacement from deleting this bucket
    # Useful for production data buckets
    prevent_destroy = false # Change to true to test the protection

    # If the location changes, create the new one before destroying the old
    create_before_destroy = true

    # Ignore manual changes to labels made via GCP Console
    ignore_changes = [
      labels,
    ]
  }
}
