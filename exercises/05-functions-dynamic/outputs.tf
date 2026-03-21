output "bucket_name_formatted" {
  # Function: join and upper
  value = join(" :: ", [upper(terraform.workspace), google_storage_bucket.dynamic_bucket.name])
}

output "applied_rules_count" {
  # Function: length
  value = length(var.lifecycle_rules)
}
