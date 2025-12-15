output "vpc_id" {
  value = module.network.vpc_id
}

output "app_instance_id" {
  value = module.compute.instance_id
}

output "db_endpoint" {
  value = module.database.db_endpoint
}

output "s3_bucket_name" {
  value = module.storage.bucket_name
}
