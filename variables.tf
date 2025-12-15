
variable "aws_region" {
  type    = string
  default = "us-west-2"
  description = "AWS region to model resources in"
}

variable "name" {
  type    = string
  default = "product-catalog-mvp"
  description = "Name prefix used for resources"
}

variable "ami" {
  type    = string
  default = "ami-0c94855ba95c71c99" 
  description = "AMI ID to use for EC2; override for your region"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
  description = "EC2 instance type"
}

variable "db_password" {
  type      = string
  sensitive = true
  description = "Database admin password (sensitive). For modeling only - do not hardcode in real projects."
}

variable "tags" {
  type    = map(string)
  default = {}
  description = "Optional tags to apply to resources"
}
