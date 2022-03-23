
output "postgresql" {
  value = module.create-postgress.postgresql
}

output "postgresql_password" {
  value = module.create-postgress.postgresql_password
}
