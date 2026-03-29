# Topic 7.1: Data Source to get project info
data "google_project" "current" {}

locals {
  # Map of environments to create with specific rules
  env_config = {
    dev  = { age = 30, class = "NEARLINE" }
    prod = { age = 90, class = "COLDLINE" }
  }
}

# Topic 5: Calling a local module with for_each
module "secure_buckets" {
  source   = "./modules/secure_storage"
  for_each = local.env_config

  bucket_name = lower("ascend-capstone-${each.key}-${data.google_project.current.number}")
  location    = var.region

  lifecycle_rules = [
    {
      action        = "SetStorageClass"
      storage_class = each.value.class
      age           = each.value.age
    },
    {
      action = "Delete"
      age    = each.value.age + 365 # Retain for a year after transition
    }
  ]
}