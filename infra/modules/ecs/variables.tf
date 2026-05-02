variable "execution_role_arn" {
  type = string
}

variable "private_subnet_1_id" {
  type = string
}

variable "private_subnet_2_id" {
  type = string
}

variable "task_sg_id" {
  type = string
}

variable "target_group_arn" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "rds_endpoint" {
  type = string
}