variable "aws_region" {
  type        = string
  description = "the region to deploy resources"

}

# VPC
variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string

}

variable "vpc_name" {
  description = "name of vpc"
  type        = string


}

## All subnets
variable "public_subnet_1_name" {
  description = "public subnet 1"
  type        = string

}

variable "public_subnet_2_name" {
  description = "public subnet 2"
  type        = string
}

variable "private_subnet_1_name" {
  description = "private subnet 1"
  type        = string

}

variable "private_subnet_2_name" {
  description = "private subnet 2"
  type        = string

}

variable "public_subnet_1_cidr" {
  description = "public 1 cidr block"
  type        = string

}

variable "public_subnet_2_cidr" {
  description = "public 2 cidr block"
  type        = string

}

variable "private_subnet_1_cidr" {
  description = "private1 cidr block"
  type        = string

}

variable "private_subnet_2_cidr" {
  description = "private 2 cidr block"
  type        = string

}

variable "availability_zone_1" {
  description = "az 1"
  type        = string
}

variable "availability_zone_2" {
  description = "az 2"
  type        = string
}

