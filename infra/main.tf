module "vpc" {
  source   = "./modules/VPC"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name

  public_subnet_1_name  = var.public_subnet_1_name
  public_subnet_2_name  = var.public_subnet_2_name
  private_subnet_1_name = var.private_subnet_1_name
  private_subnet_2_name = var.private_subnet_2_name

  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr

  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2

  igw_name                 = var.igw_name
  public_route_table_name  = var.public_route_table_name
  private_route_table_name = var.private_route_table_name




}