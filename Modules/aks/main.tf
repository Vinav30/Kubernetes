data "azurerm_resource_group" "rg" {
  for_each = var.aks
  name     = each.value.resource_group_name
}

resource "azurerm_kubernetes_cluster" "aks" {
  for_each = var.aks

  name                = each.value.name
  location            = data.azurerm_resource_group.rg[each.key].location
  resource_group_name = data.azurerm_resource_group.rg[each.key].name
  dns_prefix          = each.value.dns_prefix
  oidc_issuer_enabled = true

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size = "Standard_D2ds_v6"
    }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}
output "client_certificate" {
  value = { for k, v in azurerm_kubernetes_cluster.aks : k => v.kube_config[0].client_certificate }
  sensitive = true
}

output "kube_config" {
  value = { for k, v in azurerm_kubernetes_cluster.aks : k => v.kube_config_raw }
  sensitive = true
}
  