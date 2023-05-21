data "github_repository" "omry_repo" {
  full_name = "omry-hay/blueprints"
}

resource "github_branch" "vpc" {
  repository = data.github_repository.omry_repo.name
  branch     = module.vpc.name
}

output "repo_name" {
  value = data.github_repository.omry_repo.homepage_url
}
