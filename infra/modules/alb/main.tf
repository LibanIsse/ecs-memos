# Create ALB
resource "aws_lb" "alb_ecs" {
  name               = "alb-memos"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = [var.public_subnet_1_id, var.public_subnet_2_id]

  enable_deletion_protection = false



}

# Create ALB target group
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

# Create ALB listener
resource "aws_lb_listener" "alb_http" {
  load_balancer_arn = aws_lb.alb_ecs.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }

  }
}

resource "aws_lb_listener" "alb_https" {
  load_balancer_arn = aws_lb.alb_ecs.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_tg.arn
  }
}

