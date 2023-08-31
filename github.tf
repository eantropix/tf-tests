module "github" {
  source = "./github"
}

resource "github_membership" "all" {
  for_each = local.users
  username = each.value["github_user"]
  role     = each.value["github_role"]
}

resource "github_team_membership" "dev" {
  for_each = local.users
  team_id  = module.github.groups["dev"]
  username = each.value["github_user"]
  role     = "member"
}