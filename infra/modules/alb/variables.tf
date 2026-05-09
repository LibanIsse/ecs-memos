variable "alb_sg_id" {
  type = string
}

variable "public_subnet_1_id" {
  description = "public subnet 2"
  type        = string
}

variable "public_subnet_2_id" {
  description = "public subnet"
  type        = string
}

variable "vpc_id" {
  description = "vpc"
  type        = string
}

variable "certificate_arn" {
  description = "acm certificate"
  type        = string

}

variable "alb_name" {
  type    = string
  default = "alb-memos"
}

variable "target_group_name" {
  type    = string
  default = "memos-alb-tg"
}

variable "target_group_port" {
  type    = number
  default = 5230
}

variable "health_check_path" {
  type    = string
  default = "/health"
}