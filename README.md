# Infrastructure : infra-provisioned

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Ajout d'un réseau virtuel (VNet) et d'un sous-réseau privé pour l'environnement dev.

## Ressources Azure créées

- **NETWORK** : `infra-dev-network`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `swedencentral` |
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

- `main.tf`
- `variables.tf`

## Tags appliqués

```hcl
{
  "project": "infra-provisioned",
  "environment": "dev",
  "owner": "devops-team"
}
```
