#create ecr repository
resource "aws_ecr_repository" "memos_repo" {
  name = "ecsmemos"


}

