data "github_repository" "omry_repo" {
  full_name = "omry-hay/blueprints"
}

output "repo_name" {
  value = data.github_repository.omry_repo.homepage_url
}
