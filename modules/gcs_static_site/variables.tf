variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "location" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "labels" {
  description = "A mapping of labels to assign to the bucket"
  type        = map(string)
  default     = {}
}
