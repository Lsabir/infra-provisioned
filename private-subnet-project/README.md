# Infrastructure : private-subnet-project

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'un subnet privé dans un réseau existant.

## Ressources Azure créées

- **NETWORK** : `vnet-main`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `private-dev` |

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
- `terraform.tfvars.example`

## Tags appliqués

```hcl
{
  "project": "private-subnet-project",
  "environment": "dev",
  "owner": "devops-team"
}
```
