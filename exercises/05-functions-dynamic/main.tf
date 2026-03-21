locals {
  # Function usage: Ensuring the bucket name is always lowercase
  bucket_name = lower("ascend-lab-dynamic-${terraform.workspace}")
}

resource "google_storage_bucket" "dynamic_bucket" {
  name     = local.bucket_name
  location = var.region

  # Topic 8.5: Dynamic Block to iterate over var.lifecycle_rules
  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules

    content {
      action {
        type          = lifecycle_rule.value.action_type
        storage_class = lifecycle_rule.value.storage_class
      }
      condition {
        age = lifecycle_rule.value.age
      }
    }
  }

  uniform_bucket_level_access = true
}
