variable "aws_region" {
    type = string
    description = "the region to deploy resources"

}

variable "vpc_cidr" {
    description = "cidr block for vpc"
    type = string

}

variable "vpc_name" {
    description = "name of vpc"
    type = string


}