output "vpc_name_id" {
    description = "id of the vpc"
    value = aws_vpc.main

}

output "public_subnet_1_id" {
    description = "public subnet 1"
    value = aws_subnet.public_subnet_1.id

}

output "public_subnet_2_id" {
    description = "public subnet 2"
    value = aws_subnet.public_subnet_2.id
}

output "private_subnet_1_id" {
    description = "private subnet 1"
    value = aws_subnet.private_subnet_1.id

}

output "private_subnet_2_id" {
    description = "private subnet 2"
    value = aws_subnet.private_subnet_2.id

}

output "eip_nat" {
    value = aws_eip.eip_nat.id

}
