


# Terrafrom workflow

```
terraform init
terraform validate
terrafrom plan
terraform apply -auto-approve
terraform destroy -auto-approve
terraform console
terraform fmt
```


# Save information inside terrafrom 
- variables 
    - ```
        var.* # 1.Declare 2. Init -> in-run-time / default
- locals 
- data






```
> var.namespaces_to_create
tolist([
  "dev",
  "staging",
  "integration",
  "devops",
])
> data.kubernetes_all_namespaces.allns.namespaces 
tolist([
  "default",
  "devops",
  "ingress-nginx",
  "kube-node-lease",
  "kube-public",
  "kube-system",
  "monitoring",
  "nadav",
  "oms",
])
> { for ns in data.kubernetes_all_namespaces.allns.namespaces : ns => (contains(var.namespaces_to_create,ns) ?  "Exists"  :  "NotExists") }
{
  "default" = "NotExists"
  "devops" = "Exists"
  "ingress-nginx" = "NotExists"
  "kube-node-lease" = "NotExists"
  "kube-public" = "NotExists"
  "kube-system" = "NotExists"
  "monitoring" = "NotExists"
  "nadav" = "NotExists"
  "oms" = "NotExists"
}
```


## vThe Root Module
Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the .tf files in the main working directory.

## Child Modules
A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as a child module.


Get child data from the root module :

Inside the child define :
```
output "data_kubernetes_all_namespaces_allns" {
  value = data.kubernetes_all_namespaces.allns
}
```

Then you can call in from the parant as :
```
module.aks-kubernetes.data_kubernetes_all_namespaces_allns
```