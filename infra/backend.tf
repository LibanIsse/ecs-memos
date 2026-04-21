terraform {
  backend "s3" {
    bucket       = "ecs-s3-memos"
    key          = "ecs-memos/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}