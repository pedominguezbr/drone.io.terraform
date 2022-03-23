resource "kubernetes_namespace" "kubernetes_dynamic" {
  metadata {
    name = var.namespace_name
  }
}


# resource "kubernetes_namespace" "kubernetes_dynamic" {
#   for_each = {
#     for index, fr in var.namespaces :
#     index => fr
#   }

#   metadata {
#     name = each.value.namespace_name
#   }
# }
