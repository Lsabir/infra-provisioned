# Projet de base — l'agent ajoute des fichiers .tf supplémentaires dans ce dossier.

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = merge(var.common_tags, {
    environment = var.environment
  })
}
