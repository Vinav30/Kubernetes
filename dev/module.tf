module "resource_group" {
  source    = "../Modules/rg"
  rgs-axion = var.rgs-axion
}

module "aks" {
  source     = "../Modules/aks"
  aks        = var.aks
  depends_on = [module.resource_group]
}
module "acr" {
  source     = "../Modules/acr"
  acr        = var.acr
  depends_on = [module.resource_group]
}
