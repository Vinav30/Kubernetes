output "resource_group_names" {
  description = "The names of the created resource groups"
  value       = { for k, v in var.rgs-axion : k => v.name }
}

output "aks_cluster_names" {
  description = "The names of the AKS clusters"
  value       = { for k, v in var.aks : k => v.name }
}

# Example of how to output module-specific data if the modules export them:
# output "aks_cluster_ids" {
#   value = module.aks.aks_ids
# }
output "acr_names" {
  description = "The names of the ACR instances"
  value       = { for k, v in var.acr : k => v.name }
}