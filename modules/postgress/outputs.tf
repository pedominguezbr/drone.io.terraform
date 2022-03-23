locals {
  postgresql_release_settings = {
    for obj in helm_release.postgresql.set : obj.name => obj.value
  }
}

output "postgresql" {
  value = nonsensitive(local.postgresql_release_settings)
}

output "postgresql_password" {
  value = nonsensitive(random_password.password.result)

}
# output "postgresql_url" {
#   value = local.postgresql_release_settings["hostname"]
# }