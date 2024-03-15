# Laboratoire Terraform pour le Déploiement d'une EC2, une passerelle NAT et un ALB sur AWS

Ce laboratoire fournit un exemple de configuration Terraform pour déployer une instance EC2, une passerelle NAT et un Application Load Balancer (ALB) sur Amazon Web Services (AWS). Il inclut la mise en place de ressources dans des sous-réseaux publics et privés, la configuration des groupes de sécurité, et la création d'un VPC pour héberger l'infrastructure.

## Prérequis

Avant de commencer, assurez-vous de disposer des prérequis suivants :

- Terraform
- Un compte AWS avec les autorisations nécessaires pour créer des instances EC2, des passerelles NAT, des ALB, des VPC, des sous-réseaux et des groupes de sécurité.

## Configuration

1. **Clonage du Répertoire :** Commencez par cloner ce dépôt Git sur votre machine locale :

```bash
git clone https://github.com/example/aws-terraform-ec2-nat-alb-lab.git
```

2. **Initialisation du Répertoire :** Accédez au répertoire cloné et initialisez Terraform :

```bash
cd aws-terraform-ec2-nat-alb-lab
terraform init
```

3. **Configuration des Variables :** Éditez le fichier `var.tf` pour définir les variables Terraform nécessaires telles que la région, les clés d'accès, etc.

4. **Validation de la Configuration :** Avant de déployer les ressources, validez votre configuration Terraform :

```bash
terraform plan
```

5. **Déploiement des Ressources :** Une fois la configuration validée, déployez les ressources :

```bash
terraform apply
```

## Structure du Projet

```
aws-terraform-ec2-nat-alb-lab/
│
├── providers.tf       # Fichier définissant les fournisseurs
├── var.tf             # Fichier définissant les variables Terraform
├── outputs.tf         # Fichier définissant les sorties Terraform
├── terraform.tfstate  # Fichier d'état Terraform (généré après le déploiement)
├── README.md          # Ce fichier README décrivant le laboratoire
├── natgateway.tf      # Fichier de configuration pour la passerelle NAT
├── alb.tf             # Fichier de configuration pour l'Application Load Balancer
├── vpc.tf             # Fichier de configuration pour le VPC
├── ec2.tf             # Fichier de configuration pour EC2
├── subnets.tf         # Fichier de configuration pour les sous-réseaux
└── securitygroups.tf  # Fichier de configuration pour les groupes de sécurité
```

## Nettoyage

Après avoir terminé le laboratoire, pensez à détruire les ressources déployées pour éviter des frais inutiles sur votre compte AWS :

```bash
terraform destroy
```

## Remarques

- Assurez-vous de comprendre les coûts associés à l'utilisation des ressources AWS telles que les instances EC2, les passerelles NAT, les ALB, etc.
- Ce laboratoire est fourni à des fins d'apprentissage et de démonstration. Il est recommandé de ne pas utiliser ces configurations en production sans une évaluation appropriée de la sécurité et des performances.
