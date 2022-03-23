variable "namespace_name" {
  type = string
}
variable "postgress_name" {
  type    = string
  default = "postgresql"
}

variable "postgress_host" {
  type    = string
  default = "localhost"
}

variable "postgress_user_name" {
  type    = string
  default = "postgresqluser"
}

variable "postgress_ports" {
  type    = string
  default = "5432"
}

variable "postgress_database" {
  type    = string
  default = "postgresqldb"
}