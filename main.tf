module "aks-kubernetes" {
  providers = {
    kubernetes = kubernetes.aks
  }
  source               = "./modules/kubernetes"
  namespaces_to_create = local.kubernetes_namespaces
}