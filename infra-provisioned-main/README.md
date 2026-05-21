# infra-provisioned

Projet Terraform simple pour créer un Resource Group Azure en Sweden Central.

## Ressources créées

- **Resource Group** : `infra-provisioned-rg` — région `swedencentral`

## Structure

```
terraform/
├── main.tf           # Resource group
├── variables.tf      # Variables
├── outputs.tf        # Outputs
├── providers.tf      # Provider AzureRM
├── backend.tf        # Backend remote state
└── terraform.tfvars  # Valeurs des variables
```

## Déploiement

```bash
terraform init
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
```

## Variables

| Variable             | Valeur par défaut        |
|----------------------|--------------------------|
| `location`           | `swedencentral`          |
| `resource_group_name`| `infra-provisioned-rg`   |
| `environment`        | `dev`                    |
