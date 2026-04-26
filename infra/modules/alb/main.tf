resource "aws_lb" "alb_ecs" {
  name               = "alb-memos"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = [var.public_subnet_1_id, var.public_subnet_2_id]

  enable_deletion_protection = false



}

resource "aws_lb_target_group" "alb_tg" {
  name        = "memos-alb-tg"
  port        = 5230
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id

 health_check {
    path     = "/health"
    protocol = "HTTP"
    matcher  = "200"
  }

}

resource "aws_lb_listener" "alb_http" {
  load_balancer_arn = aws_lb.alb_ecs.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_tg.arn
  }
}
