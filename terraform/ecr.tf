resource "aws_ecr_repository" "sample_application" {
  name                 = "docker-practice"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}