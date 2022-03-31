locals {
  kubernetes_namespaces = [for row in jsondecode(data.config_workbook.kubernetes_namespaces.json).kubernetes_namespaces : row.namespaces]
}
