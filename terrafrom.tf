terraform {
  required_providers {
    config = {
      source  = "alabuel/config"
      version = "0.2.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}



provider "kubernetes" {
  alias       = "aks"
  config_path = "/Users/nsalman/dev-devops/terraform-module-training/rnd-aks-de-kube-confing.yaml"
}