# Satis'faction

Rappel du but de l'application : 
Dans le cadre du B2B, permettre aux entreprises de suivre dans le temps la satisfaction de leurs clients afin de maximiser leur rétention client.

Pour plus de détails, n'hésitez pas à consulter le projet sur la plateforme THP : https://www.thehackingproject.org/dashboard/courses/1/final_projects/208?locale=fr

Pour tester toutes les fonctionnalités voici les étapes à suivre : 
- Créez vous un compte 
- Créez une enquête 
- Grâce à nos nested forms, ajoutez des questions à l'enquête, supprimez en, enfin faites en ce que vous voulez !
- Enfin, envoyez votre enquête à vos clients grâce à notre mailer ! 
- Incoming : vous pourrez bientôt consultez les résultats dans un dashbaord


## Pour tester le projet en local : 

Afin de tester notre code : téléchargez le projet.
Ensuite, suivez la liste d'instructions : 
```
bundle install
```

```
rails db:create
rails db:migrate
rails server
```

Il est possible de crée une fausse base de donnée par le biai de 

```
rails db:seed
```
ATTENTION: comme mentioné dans le code, cette manipulation effacera le base de donnée existante. Cependant il est possible de ne pas effcaer la base de donnée existante et de simplement générer aléatoirement chaques objets a partir de d'IDs aléatoirement selectionés parmis ceux existants.


### Le projet sur Heroku 

* https://satisfaction-project.herokuapp.com/ - Satis'faction



### L'équipe

Merci aux membres de l'équipe :
* Tanguy
* Augustin
* Julien
* Baptiste
* Sacha
