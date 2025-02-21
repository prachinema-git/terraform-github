terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = "GITHUB-PAT"
}

resource "github_repository" "terraformrepo" {
  name        = "terraformrepo"
  description = "Repository created with terraform code"
  visibility  = "public"
  auto_init   = true
}

resource "github_branch" "development" {
  repository = github_repository.terraformrepo.name
  branch     = "development"
}
