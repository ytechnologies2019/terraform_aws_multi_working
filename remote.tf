terraform {
  cloud {
    organization = "terraform-aws-cicd"

    workspaces {
      name = "terraform-github-push"
    }
  }
}