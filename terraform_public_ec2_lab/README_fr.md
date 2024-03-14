# Laboratoire Terraform pour le Déploiement d'une Instance EC2 (Hello world + SSH) sur AWS

Ce laboratoire fournit un exemple de configuration Terraform pour déployer une instance EC2 sur Amazon Web Services (AWS). Il inclut la mise en place de groupes de sécurité, de sous-réseaux, de règles SSH, d'un nouveau VPC, ainsi que d'une passerelle Internet pour permettre l'accès à l'instance EC2 depuis Internet.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé les logiciels suivants sur votre machine :

- Terraform
- Un compte AWS avec les autorisations nécessaires pour créer des ressources EC2, des groupes de sécurité, des sous-réseaux, un VPC et une passerelle Internet.

## Configuration

1. **Clonage du Répertoire :** Commencez par cloner ce répertoire Git sur votre machine locale :

```bash
git clone <url_du_repository>
```

2. **Initialisation du Répertoire :** Accédez au répertoire cloné et initialisez Terraform en exécutant la commande suivante :

```bash
cd terraform_public_ec2_lab
terraform init
```

3. **Configuration des Variables :** Éditez le fichier `var.tf` pour définir les variables AWS nécessaires, telles que la région, les clés d'accès, etc.

4. **Validation de la Configuration :** Avant de déployer les ressources, utilisez la commande suivante pour valider votre configuration Terraform :

```bash
terraform plan
```

5. **Déploiement des Ressources :** Une fois la configuration validée, déployez les ressources en exécutant :

```bash
terraform apply
```

## Structure du Projet

```
terraform-ec2-lab/
│
├── ec2.tf             # Fichier de configuration de l'EC2 et de la clé SSH
├── provider.tf        # Fichier de configuration du provider
├── securitygroups.tf  # Fichier de configuration du securitygroup pour l'EC2
├── subnets.tf         # Fichier de configuration du subnet du VPC pour accueillir l'EC2
├── vpc.tf             # Fichier de configuration du vpc et de l'internet gateway
├── var.tf             # Fichier définissant les variables Terraform
├── outputs.tf         # Fichier définissant les sorties Terraform
├── terraform.tfstate  # Fichier de l'état Terraform (généré après le déploiement)
├── id_ed25519.pub     # Fichier contenant la clé SSH publique pour accéder à l'instance
└── README.md          # Ce fichier README décrivant le laboratoire
```

## Nettoyage

Après avoir terminé le laboratoire, assurez-vous de détruire les ressources déployées pour éviter les frais AWS inutiles. Utilisez la commande suivante pour détruire les ressources :

```bash
terraform destroy
```

## Remarques

- Assurez-vous de comprendre les coûts associés à l'utilisation des services AWS. Les ressources déployées peuvent entraîner des frais sur votre compte AWS.
- Ce laboratoire est fourni à des fins d'apprentissage et de démonstration. Il est recommandé de ne pas utiliser ces configurations en production sans une évaluation appropriée de la sécurité et des performances.