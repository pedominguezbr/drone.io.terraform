# Define Input Variables
variable "host" {
  type        = string
  description = "This variable defines the Environment"
}

variable "client_certificate" {
  type = string
}

variable "client_key" {
  type = string
}

variable "cluster_ca_certificate" {
  type = string
}

variable "namespace_name" {
  type = string
}

variable "postgress_name" {
  type = string
}

variable "postgress_host" {
  type = string
}

variable "postgress_user_name" {
  type = string
}

variable "postgress_ports" {
  type = string
}

variable "postgress_database" {
  type = string
}

# variable "namespaces" {
#   type = list(object({
#     namespace_name = string
#   }))
# }