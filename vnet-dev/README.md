# Infrastructure : vnet-dev

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'un réseau virtuel (VNet) avec deux sous-réseaux dans l'environnement de développement (dev).

## Ressources Azure créées

- **NETWORK** : `vnet-dev`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `vnet-dev` |

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
  "project": "vnet-dev",
  "environment": "dev",
  "owner": "devops-team"
}
```
