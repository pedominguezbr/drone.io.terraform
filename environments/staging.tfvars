host                   = "https://pedominguezbr8863.k8s.fagurto.dev" #"https://terraform-aks-dev2-8481d9fd.hcp.eastus.azmk8s.io:443"
client_certificate     = ""
client_key             = ""
cluster_ca_certificate = ""

namespace_name      = "staging"
postgress_name      = "staging-postgresql"
postgress_host      = "staging-postgresql.staging.svc.cluster.local"
postgress_user_name = "postgresqluser"
postgress_ports     = "5432"
postgress_database  = "postgresqldb"

# namespaces = [
#   { "namespace_name" = "dev-proyecto1" },
#   { "namespace_name" = "dev-proyecto2" }
# ]