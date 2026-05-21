# Infrastructure : add-vnet-subnet

> Généré automatiquement par l'Agent IA DevOps

## Résumé
Ajout d'un réseau virtuel et d'un sous-réseau privé dans le groupe de ressources existant.

## Ressources Azure
- **NETWORK** : `projet-dev-vnet`

## Paramètres
| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `projet-dev` |

## Déploiement
```bash
terraform init
terraform plan  -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
```

## Fichiers modifiés
- `main.tf`
- `terraform.tfvars`

## Tags
```json
{
  "project": "add-vnet-subnet",
  "environment": "dev",
  "owner": "devops-team"
}
```
