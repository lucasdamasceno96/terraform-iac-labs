variable "project_id" {
  type    = string
  default = "ldp21k-terraform-iac-labs"
}

variable "region" {
  type    = string
  default = "us-central1"
}

# A list of maps to define lifecycle rules dynamically
variable "lifecycle_rules" {
  description = "List of lifecycle rules to apply to the bucket"
  type = list(object({
    action_type   = string
    storage_class = string
    age           = number
  }))
  default = []
}
