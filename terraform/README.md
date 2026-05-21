# Infrastructure : infra-dev-network

> Généré automatiquement par l'Agent IA DevOps

## Résumé
Ajout d'un réseau virtuel et d'un sous-réseau privé dans l'infrastructure existante.

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
- `terraform.tfvars`

## Tags
```json
{
  "project": "infra-dev",
  "environment": "dev",
  "owner": "devops-team"
}
```
