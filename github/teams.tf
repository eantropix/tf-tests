locals {
  github_groups = ["admin", "dev"]
}

resource "github_team" "dev" {
  name        = "dev"
  description = "dev GitHub group"
  privacy     = "closed"
}

resource "github_team" "admin" {
  name        = "admin"
  description = "admin GitHub group"
  privacy     = "closed"
}