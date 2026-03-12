variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for all resources on this lab"
  type        = string
  default     = "21k"
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

variable "machine_type" {
  description = "Type of the VM instance"
  type        = string
  default     = "e2-micro"
}


