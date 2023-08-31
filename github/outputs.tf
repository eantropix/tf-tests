output "groups" {
  value = {
    dev   = github_team.dev.id,
    admin = github_team.admin.id
  }
}