variable "name" { 
    type = string
    default = "mvp" 
    }
variable "vpc_id" { type = string }
variable "subnet_id" { type = string }
variable "ami" { type = string }
variable "instance_type" { 
    type = string 
    default = "t3.micro" 
    }
variable "s3_bucket_name" { 
    type = string
    default = "" 
    }
variable "s3_bucket_arn" { 
    type = string
    default = "" 
    }
variable "tags" { 
    type = map(string)
    default = {} 
 }

# Derived value: if s3 bucket name provided generate arn
locals {
  bucket_arn = length(trim(var.s3_bucket_arn)) > 0 ? var.s3_bucket_arn : (length(trim(var.s3_bucket_name)) > 0 ? "arn:aws:s3:::${var.s3_bucket_name}" : "")
}
