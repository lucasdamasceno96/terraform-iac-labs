module "website_bucket" {
  source = "../../modules/gcs_static_site" # Local Path

  bucket_name = "ascend-lab-module-04-${terraform.workspace}"
  location    = "us-central1"

  labels = {
    environment = terraform.workspace
    managed_by  = "terraform"
  }
}
variable "project_id" {}
variable "region" {
  default = "us-central1"
}

# Accessing the output from the module
output "final_bucket_link" {
  value = module.website_bucket.bucket_self_link
}
