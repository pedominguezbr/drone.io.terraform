# data "terraform_remote_state" "foo" {
#   backend = "kubernetes"
#   config = {
#     secret_suffix    = "state"
#     load_config_file = true
#   }
# }
########################################
module "create-namespace" {
  source         = "../modules/namespace"
  namespace_name = var.namespace_name
}


module "create-postgress" {
  source              = "../modules/postgress"
  namespace_name      = var.namespace_name
  postgress_name      = var.postgress_name
  postgress_host      = var.postgress_host
  postgress_user_name = var.postgress_user_name
  postgress_ports     = var.postgress_ports
  postgress_database  = var.postgress_database
  depends_on = [
    module.create-namespace
  ]
}