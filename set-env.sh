#!/bin/bash

# Script pour définir les variables d'environnement AWS
# Remplacez les valeurs ci-dessous par vos vraies clés AWS

export TF_VAR_aws_access_key="YOUR_AWS_ACCESS_KEY_HERE"
export TF_VAR_aws_secret_key="YOUR_AWS_SECRET_KEY_HERE"

echo "Variables d'environnement AWS définies pour Terraform"
echo "Vous pouvez maintenant exécuter : terraform plan ou terraform apply"