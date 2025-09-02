# Terraform AWS Configuration

## Configuration des credentials AWS avec variables d'environnement

### 1. Configuration des variables d'environnement

```bash
# Définir les variables d'environnement AWS
export TF_VAR_aws_access_key="votre_access_key_ici"
export TF_VAR_aws_secret_key="votre_secret_key_ici"

# Ou utiliser le script fourni :
source ./set-env.sh
```

### 2. Utilisation

```bash
# Initialiser Terraform
terraform init

# Planifier les changements
terraform plan

# Appliquer la configuration
terraform apply
```

### 3. Sécurité

- Les variables sensibles sont marquées `sensitive = true`
- Le fichier `.gitignore` exclut les fichiers contenant des credentials
- **Ne jamais** commiter vos vraies clés AWS

### 4. Structure des fichiers

- `main.tf` - Configuration principale
- `variables.tf` - Définition des variables
- `terraform.tfvars` - Valeurs par défaut (ignoré par git)
- `set-env.sh` - Script pour définir les variables d'environnement