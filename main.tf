// Wire modules together.

module "network" {
  source               = "./modules/network" //Calls the network module
  name                 = var.name
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidr  = "10.0.2.0/24"
  availability_zone    = null
  tags                 = var.tags
}

module "storage" {
  source = "./modules/storage" //Creates an S3 bucket,Used for product images
  name   = var.name
  tags   = var.tags
}

module "compute" {
  source      = "./modules/compute" //This represents microservice,Placed in public subnet
  name        = var.name
  vpc_id      = module.network.vpc_id
  subnet_id   = module.network.public_subnet_id
  ami         = var.ami
  instance_type = var.instance_type
  s3_bucket_name = module.storage.bucket_name
  tags        = var.tags
}

module "database" {
  source                = "./modules/database" //DB is private,secure
  name                  = var.name
  vpc_id                = module.network.vpc_id
  subnet_id             = module.network.private_subnet_id
  app_security_group_id = module.compute.app_sg_id
  username              = "mvpadmin"
  password              = var.db_password
  tags                  = var.tags
}
