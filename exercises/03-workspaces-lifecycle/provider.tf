# Provider configuration
# Best Practice: Centralize project and region at the provider level
provider "google" {
  project = var.project_id
  region  = var.region
}
