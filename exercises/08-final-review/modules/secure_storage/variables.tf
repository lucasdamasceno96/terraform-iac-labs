variable "bucket_name" {
  description = "Unique name for the GCS bucket"
  type        = string
}

variable "location" {
  description = "GCP Region"
  type        = string
}

variable "lifecycle_rules" {
  description = "List of maps containing lifecycle rule configurations"
  type        = list(any)
  default     = []
}