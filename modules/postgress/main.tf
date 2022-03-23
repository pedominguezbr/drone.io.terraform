resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "helm_release" "postgresql" {
  name       = var.postgress_name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  namespace  = var.namespace_name
  set {
    name  = "global.postgresql.auth.postgresPassword"
    value = random_password.password.result
  }

  set {
    name  = "global.postgresql.auth.password"
    value = random_password.password.result
  }

  set {
    name  = "global.postgresql.auth.username"
    value = var.postgress_user_name
  }
  set {
    name  = "global.postgresql.service.ports.postgresql"
    value = var.postgress_ports
  }
  set {
    name  = "global.postgresql.auth.database"
    value = var.postgress_database
  }


  depends_on = [
    random_password.password
  ]
}

resource "kubernetes_secret" "credencial_postgress" {

  metadata {
    name      = "postgress-auth"
    namespace = var.namespace_name
  }

  data = {
    host     = var.postgress_host #helm_release.postgresql.set["hostname"]
    database = var.postgress_database
    port     = var.postgress_ports
    username = var.postgress_user_name
    password = random_password.password.result
  }

  type = "Opaque"
}