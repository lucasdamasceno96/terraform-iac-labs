output "deployed_buckets" {
  value = {
    for k, v in module.secure_buckets : k => v.bucket_url
  }
  description = "URLs of the deployed buckets by environment"
}