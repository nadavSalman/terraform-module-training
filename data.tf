data "config_workbook" "kubernetes_namespaces" {
  excel     = "Input.xlsx"
  worksheet = "kubernetes_namespaces"
}