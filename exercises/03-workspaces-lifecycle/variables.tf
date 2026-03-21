variable "project_id" {
  description = "The GCP Project ID"
  type        = string
  default     = "ldp21k-terraform-iac-labs"
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "bucket_prefix" {
  description = "Prefix for the GCS bucket name"
  type        = string
  default     = "ascend-lab"
}
