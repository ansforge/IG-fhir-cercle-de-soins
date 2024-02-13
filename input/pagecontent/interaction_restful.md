<!-- Chapitre 3.1 -->

### Gestion des acteurs

Les flux de gestion des ressources représentant les acteurs de cercle de soins sont des flux de création et de mise à jour des acteurs respectivement opérés par les requêtes HTTP POST et HTTP PUT sur les ressources FHIR « Patient », « Practitioner », « PractitionerRole », « RelatedPerson » et « Organization ». 
Il est fortement recommandé de s’appuyer sur les données de l’Annuaire Santé , rassemblant les données d’identification des professionnels et des structu  res de santé issues des différents référentiels nationaux.
Le flux 1a de création d’un acteur est une requête HTTP POST reposant sur l’interaction « create » de FHIR .
Le flux 4a de mise à jour est une requête HTTP PUT reposant sur l’interaction « update » de FHIR . La mise à jour nécessite de préciser l’identifiant logique de la ressource à mettre à jour. 

Ces requêtes sont envoyées au gestionnaire :

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="st-crea-maj-acteur.png" alt="CI-SIS" title="Diagramme de séquence des flux 1a et 4a">
</div>

Si la création de l’acteur est correctement effectuée, un code HTTP 201 created est retourné.
Si la mise à jour d’un acteur est correctement effectuée, le système gestionnaire retourne un code HTTP 200 OK . 

### Gestion du cercle de soins

Les flux permettant de gérer les cercles de soins sont définis ci-dessous :

* Le flux 1b de création du cercle de soins sera assuré par une ou plusieurs requêtes HTTP POST.
* Le flux 2a de recherche de cercles de soins sera assuré par une requête HTTP GET.
* Le flux 2b est un flux de demande de récupération d’un cercle de soins particulier ; il sera assuré par une requête HTTP GET.
* Le flux 3a de réponse à la recherche de cercles de soins sera assuré par la réponse à la requête HTTP GET (flux 2a).
* Le flux 3b est un flux de réponse à la demande de récupération d’un Cercle de Soins particulier ; il sera assuré par la réponse à la requête HTTP GET (flux 2b).
* Le flux 4b de mise à jour du cercle de soins sera assuré par une ou plusieurs requêtes HTTP PUT.

Comme indiqué dans la Spécification Fonctionnelle des Echanges du présent volet, le pré-requis à la création d’un cercle de soins est la recherche de ce cercle de soins. Si le cercle de soins n’existe pas, il est créé (flux 1b), sinon, il est mis à jour (flux 4b) :

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="st-gestion-cds.png" alt="CI-SIS" title="Diagramme de séquence des flux de gestion d’un cercle de soins (1b, 2a, 2b, 3a, 3b et 4b)">
</div>

#### Flux 1b : Création d’un cercle de soins

Le flux de création de la ressource « CareTeam » est une requête HTTP POST reposant sur l’interaction « create » de FHIR. La ressource « CareTeam » constitue le corps de la requête. Ce flux se base sur la requête de la transaction IHE « Update Care Team » [PCC-45] du profil DCTM.
Si la création du cercle de soins est correctement effectuée, un code HTTP 201 created est retourné.

