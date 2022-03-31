terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}



provider "kubernetes" {
  config_path = "/Users/nsalman/dev-devops/terraform-module-training/rnd-aks-de-kube-confing.yaml"
}