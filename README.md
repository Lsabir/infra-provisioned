# Infrastructure : infrastructure-networking

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'un Virtual Network (VNet) et d'un subnet privé associé.

## Ressources Azure créées

- **NETWORK** : `vnet-private`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `infra-dev` |

## Déploiement

```bash
# 1. Copier et renseigner les variables
cp terraform.tfvars.example terraform.tfvars
# Editer terraform.tfvars avec vos vraies valeurs

# 2. Initialiser Terraform
terraform init

# 3. Vérifier la configuration
terraform validate

# 4. Voir le plan
terraform plan -var-file=terraform.tfvars

# 5. Appliquer (après validation humaine)
terraform apply -var-file=terraform.tfvars
```

## Fichiers générés

- `providers.tf`
- `variables.tf`
- `main.tf`
- `outputs.tf`
- `terraform.tfvars`

## Tags appliqués

```hcl
{
  "project": "infrastructure-networking",
  "environment": "dev",
  "owner": "devops-team"
}
```
