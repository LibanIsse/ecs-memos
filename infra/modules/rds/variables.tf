variable "alb_sg_id" {
    description = "alb sg"
  type = string
}

variable "private_subnet_1_id" {
    description = "private subnet 1"
  type = string
}

variable "private_subnet_2_id" {
    description = "private subnet 2"
  type = string
}

variable "vpc_id" {
    description = "vpc"
  type = string
}

variable "task_sg" {
    description = "task security group"
  type = string
}

variable "db_password" {
    description = "rds password"
    type = string
    sensitive = true


}