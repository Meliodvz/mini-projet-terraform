# Mini-projet: Déployez une infra complète

## Contexte
Il s'agit d'écrire plusieurs modules permettant de reproduire le déploiement de façon très aisée, 
et ensuite d'exporter un certain nombre de métadonnées produites lors de l'exécution dans un fichier texte qui se trouvera sur notre machine Terraform.

- Un module pour créer une instance ec2 utilisant une version de ubuntu (qui
s’attachera l’ebs et l’ip publique) dont la taille et le tag seront variabilisés
- Un module pour créer un volume ebs dont la taille sera variabilisée
- Un module pour une ip publique (qui s’attachera la security group)
- Un module pour créer une security qui ouvrira le 80 et 443
- Un dossier app qui va utiliser les 4 modules pour déployer une ec2, bien-sûr vous allez surcharger
les variables afin de rendre votre application plus dynamique
