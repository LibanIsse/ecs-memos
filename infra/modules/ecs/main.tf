resource "aws_cloudwatch_log_group" "memos" {
  name              = "/ecs/memos-logs"
  retention_in_days = 7
}


resource "aws_ecs_cluster" "main" {
  name = "memos-cluster"
}

resource "aws_ecs_task_definition" "memos" {
  family                   = "memos-td"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn = var.execution_role_arn

  container_definitions = jsonencode([
    {
      name      = "memos"
      image     = "527814729206.dkr.ecr.eu-west-2.amazonaws.com/ecsmemos@sha256:f73ab95ce752ace4acf01fd9e6ef559fd599f9419b26b6cb94ae7a3425bbc3cf"
      essential = true

      portMappings = [
        {
          containerPort = 5230
          hostPort      = 5230
          protocol      = "tcp"
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = aws_cloudwatch_log_group.memos.name
          awslogs-region        = "eu-west-2"
          awslogs-stream-prefix = "ecs"
        }
      }
    }
  ])
}