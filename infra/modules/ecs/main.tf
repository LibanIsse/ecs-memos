resource "aws_cloudwatch_log_group" "memos" {
  name              = "/ecs/memos-logs"
  retention_in_days = 7
}

