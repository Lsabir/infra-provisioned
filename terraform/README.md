# Infrastructure : vnet-subnet-setup

> Généré automatiquement par l'Agent IA DevOps

## Résumé
Ajout d'un réseau virtuel et d'un sous-réseau privé dans le groupe de ressources existant.

## Ressources Azure
- **NETWORK** : `virtual-network`

## Paramètres
| Paramètre | Valeur |
|-----------|--------|
| Région | `swedencentral` |
| Environnement | `dev` |
| Préfixe | `example-dev` |

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
  "project": "vnet-subnet-setup",
  "environment": "dev",
  "owner": "devops-team"
}
```
