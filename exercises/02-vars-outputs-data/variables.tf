# variables.tf
variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "instance_name" {
  description = "The name prefix for our resources"
  type        = string
}
