# Infrastructure : nouveau-projet

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'un groupe de ressources contenant un réseau virtuel (VNet) dans l'environnement de développement.

## Ressources Azure créées

- **NETWORK** : `vnet-principal`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `nouveauprojet-dev` |

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
  "project": "nouveau-projet",
  "environment": "dev",
  "owner": "devops-team"
}
```
