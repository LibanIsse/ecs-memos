output "alb_ecs" {
    description = "Alb id"
    value = aws_lb.alb_ecs.id
}

output "alb_tg_arn" {
  value = aws_lb_target_group.alb_tg.arn
}

output "alb_dns_name" {
  value = aws_lb.alb_ecs.dns_name
}