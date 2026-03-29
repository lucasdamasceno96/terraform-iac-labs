resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location

  uniform_bucket_level_access = true

  # Topic 8.5: Dynamic block to generate rules from a list
  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules
    content {
      action {
        type          = lifecycle_rule.value.action
        storage_class = lookup(lifecycle_rule.value, "storage_class", null)
      }
      condition {
        age = lifecycle_rule.value.age
      }
    }
  }

  lifecycle {
    prevent_destroy = false # Set to true in real production data
  }
}