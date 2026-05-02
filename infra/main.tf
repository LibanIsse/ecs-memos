module "vpc" {
  source                = "./modules/VPC"
  vpc_cidr              = var.vpc_cidr
  vpc_name              = var.vpc_name
  public_subnet_1       = var.public_subnet_1
  public_subnet_2       = var.public_subnet_2
  private_subnet_1      = var.private_subnet_1
  private_subnet_2      = var.private_subnet_2
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  a_z_1                 = var.a_z_1
  a_z_2                 = var.a_z_2



}

module "alb" {
  source             = "./modules/ALB"
  alb_sg_id          = module.vpc.alb_security_group_id
  public_subnet_1_id = module.vpc.public_subnet_1_id
  public_subnet_2_id = module.vpc.public_subnet_2_id
  vpc_id             = module.vpc.vpc_name_id

}

module "rds" {
  source              = "./modules/rds"
  task_sg             = module.vpc.task_sg_id
  alb_sg_id           = module.vpc.alb_security_group_id
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  vpc_id              = module.vpc.vpc_name_id
  db_password         = var.db_password

}
