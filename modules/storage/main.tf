// Simple private S3 bucket for product images/backups.
// In a real project add lifecycle, versioning, encryption, and bucket policy.
resource "aws_s3_bucket" "app_assets" {
 
  tags   = merge(var.tags, { Name = "${var.name}-assets" })
}


resource "random_id" "suffix" {
  byte_length = 4
}
terraform {
  required_providers {
    random = { source = "hashicorp/random", version = ">= 3.0" }
  }
}
