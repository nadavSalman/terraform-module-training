
resource "kubernetes_namespace" "test" {
  metadata {
    name = var.paz_namespace
  }
}
