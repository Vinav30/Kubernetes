variable "rgs-axion" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "aks" {
  description = "AKS cluster configuration map"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
  }))
}
variable "acr" {
  type = map(object({
    name                        = string
    resource_group_name         = string
    location                    = string
    sku                         = string
  
  }))
}
