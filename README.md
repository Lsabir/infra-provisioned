# Sample Infra Provisioned

Ce dépôt est un exemple minimal d'un projet Terraform "infra-provisioned" pour tester l'agent.

## Contenu

- `providers.tf` : configuration du provider AzureRM
- `variables.tf` : variables du projet
- `main.tf` : création du Resource Group et module réseau
- `outputs.tf` : sorties utiles
- `modules/network/` : module de réseau VNet / Subnet
- `terraform.tfvars.example` : exemple de valeurs

## Installation

1. Copier le fichier d'exemple :

```powershell
cp terraform.tfvars.example terraform.tfvars
```

2. Remplir `terraform.tfvars` si nécessaire.

3. Initialiser Terraform :

```powershell
cd infra-provisioned-sample
terraform init
```

4. Vérifier le plan :

```powershell
terraform plan
```

5. Appliquer :

```powershell
terraform apply -auto-approve
```

## Note

Ce projet peut être poussé dans un repository GitHub (`infra-provisioned`) pour que l'agent lise les fichiers Terraform existants.

## Pipeline Azure CI/CD

Un workflow GitHub Actions est disponible dans `.github/workflows/azure-terraform-deploy.yml`.
Il réalise les étapes suivantes :

1. `az login` via `azure/login@v2` avec le secret `AZURE_CREDENTIALS`
2. `terraform init`
3. `terraform validate`
4. `tfsec` pour un scan de sécurité Terraform
5. `terraform plan`
6. `terraform apply` sur `main`

### Secret GitHub requis

Ajoutez un secret `AZURE_CREDENTIALS` dans votre repository GitHub avec le JSON suivant :

```json
{
  "clientId": "<ARM_CLIENT_ID>",
  "clientSecret": "<ARM_CLIENT_SECRET>",
  "subscriptionId": "<ARM_SUBSCRIPTION_ID>",
  "tenantId": "<ARM_TENANT_ID>"
}
```

Ensuite, poussez votre code sur la branche `main` pour déclencher le pipeline.
