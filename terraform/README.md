# Infrastructure : vnet-subnet-provision

> Généré automatiquement par l'Agent IA DevOps

## Résumé
Ajout d'un réseau virtuel et d'un sous-réseau privé dans le groupe de ressources existant.

## Ressources Azure
- **NETWORK** : `vnet-and-private-subnet`

## Paramètres
| Paramètre | Valeur |
|-----------|--------|
| Région | `swedencentral` |
| Environnement | `dev` |
| Préfixe | `infra-dev` |

## Déploiement
```bash
terraform init
terraform plan  -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
```

## Fichiers modifiés
- `main.tf`
- `variables.tf`
- `terraform.tfvars`

## Tags
```json
{
  "project": "vnet-subnet-provision",
  "environment": "dev",
  "owner": "devops-team"
}
```
