resource "azurerm_resource_group" "acr_res" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_container_registry" "acr_reg" {
  name                = "${var.acr_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  sku                 = "Standard"
}
