# update-captvty
Procedure pour mettre à jour Captvty sous Linux et sous Mac M1

Pour certaines personnes, mettre à jour Captvty se révèle compliqué

Pour Mac, il faudra faire

- brew install wget ggrep

vu que ggrep permet de faire ce que le grep sous Mac ne sait pas faire

- adapter l'emplacement où télécharger

Reste à faire : 

- détecter que la version installée n'est pas la même que sur le site captvty.fr et lancer automatiquement la mise à jour dans ce cas

exemple actuellement on peut extraire du site captvty.fr la chaine
23 mai 2022

(en juin et juillet, je suppose que l'affichage ne sera pas  jui...)

et extraire la date du fichier Captvty.exe

stat -c %w .captvty/Captvty.exe

2022-07-25 09:24:41.015654742 +0200

il reste à convertir et comparer les dates

vu que Captvty affiche un bandeau, il y a peut-être un moyen de récupérer cette information 

mail envoyé à l'auteur de Captvty pour savoir si une solution existe avec l'exécutable Captvty

- créer un lanceur sur lequel double-cliquer



Autre idée

bash majcap.sh
