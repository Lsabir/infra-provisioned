# Infrastructure : infra-provisioned

> Généré automatiquement par l'Agent IA DevOps

## Résumé

Création d'une machine virtuelle Ubuntu avec stockage dans le réseau existant.

## Ressources Azure créées

- **VM** : `ubuntu-vm`

## Paramètres

| Paramètre | Valeur |
|-----------|--------|
| Région | `swedencentral` |
| Environnement | `dev` |
| Préfixe | `infra-prov` |

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

- `vm_ubuntu.tf`
- `infra-provisioned_variables.tf`

## Tags appliqués

```hcl
{
  "project": "dev",
  "environment": "dev",
  "owner": "devops-team"
}
```
