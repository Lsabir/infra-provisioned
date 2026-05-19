# Infrastructure : vm-ubuntu-storage

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'une machine virtuelle Ubuntu avec stockage associé, incluant un réseau pour la connectivité.

## Ressources Azure créées

- **NETWORK** : `vmubuntu-dev-network`
- **VM** : `vmubuntu-dev-vm`
- **STORAGE** : `vmubuntu-dev-storage`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `germanywestcentral` |
| Environnement | `dev` |
| Préfixe | `vmubuntu-dev` |

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
  "project": "vm-ubuntu-storage",
  "environment": "dev",
  "owner": "devops-team"
}
```
