module "resource_group" {
  source    = "../Modules/rg"
  rgs-vinav = var.rgs-vinav
}

module "aks" {
  source     = "../Modules/aks"
  aks        = var.aks
  depends_on = [module.resource_group]
}
