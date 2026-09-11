rgs-axion = {
  rg1 = {
    name     = "axion-rg"
    location = "Central India"
  }
}

aks = {
  aks1 = {
    name                = "aks-axion-dev"
    location            = "Central India"
    resource_group_name = "axion-rg"
    dns_prefix          = "aksaxiondev"
  }
}
acr = {
  acr1 = {
    name                        = "acraxiondev12345678"
    resource_group_name         = "axion-rg"
    location                    = "Central India"
    sku                         = "Premium"
    
  }
}