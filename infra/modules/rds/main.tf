resource "aws_db_subnet_group" "rds_subnets" {
  name       = "memos-rds-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]


}

resource "aws_security_group" "rds_sg" {
  name        = "db-sg"
  description = "Allow traffic to RDS"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "DB security group"
  }
}


resource "aws_vpc_security_group_ingress_rule" "rds_in" {
  security_group_id = aws_security_group.rds_sg.id
  referenced_security_group_id = aws_security_group.task_sg.id
  from_port         = 5432
  ip_protocol       = "tcp"
  to_port           = 5432
}

resource "aws_vpc_security_group_egress_rule" "rds_out" {
  security_group_id = aws_security_group.rds_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
