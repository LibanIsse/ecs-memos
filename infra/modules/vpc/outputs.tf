output "vpc_name_id" {
    description = "id of the vpc"
    value = aws_vpc.main.id

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

output "alb_security_group_id" {
    description = "alb sg"
    value = aws_security_group.alb_sg.id

}

output "task_sg_id" {
    description = "task sg"
    value = aws_security_group.task_sg.id

}