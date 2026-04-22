module "vpc" {
    source = "./modules/VPC"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name

}