#### Flux 2a : Recherche de cercles de soins

Ce flux se base sur la requête de la transaction IHE « Search for Care Team » [PCC-46] du profil DCTM.
Le flux 2a de recherche de cercles de soins est une requête HTTP GET reposant sur l’interaction « search » de FHIR .

La requête GET est accompagnée des paramètres listés dans le tableau ci-dessous. Ces critères de recherche ont été définis dans les Spécifications Fonctionnelles des Echanges de ce volet. Des paramètres de recherche chaînés doivent être définis afin de répondre à ces attentes.

| Critère de recherche | Paramètre de recherche |
| :---- | :---- |
| Identifiant du cercle de soins | identifier : token |
| Date de création du cercle de soins | start : date (paramètre custom) |
| Date de fin du cercle de soins | end : date (paramètre custom) |
| Statut du cercle de soins | status : token |
| Date de mise à jour du cercle de soins | _lastUpdated : date |
| Date d’entrée d’un membre du cercle de soins | participant-start : date (paramètre custom) |
| Date de sortie d’un membre du cercle de soins | participant-end : date (paramètre custom) |
| Identifiant du sujet du cercle de soins | patient.identifier : token |
| Adresse du sujet du cercle de soins | patient.address  : string |
| Nom du sujet du cercle de soins | patient.family  : string |
| Prénom du sujet du cercle de soins | patient.given  : string |
| Date de naissance du sujet du cercle de soins | patient.birthdate : date |
| Sexe du sujet du cercle de soins | patient.gender : token |
| Lieu de naissance du sujet du cercle de soins | patient.birthplace : string (paramètre custom) |
| Identifiant du membre du cercle de soins (contact) | participant:RelatedPerson._id : token |
| Identifiant du membre du cercle de soins (professionnel dans une situation d’exercice) | participant:PractitionerRole._id : token |
| Identifiant du membre du cercle de soins (entité géographique ou une organisation interne) | participant:Organization._id : token |
| Identifiant du professionnel | participant:PractitionerRole.partof:PractitionerRole.practitioner:Practitioner.identifier |
| Identifiant de l’entité géographique, de l’entité juridique ou de l’organisation interne | participant:Organization.identifier : token |
| Nom du membre du cercle de soins (contact) | participant:RelatedPerson.name: string |
| Nom du membre du cercle de soins (professionnel dans un exercice professionnel ou dans une situation d’exercice) | participant:PractitionerRole.partof.nameex : string (paramètre custom) |
| Nom du membre du cercle de soins (entité géographique ou une organisation interne) | participant:Organization.name : string |
| Raison sociale de l’Entité Juridique | participant:Organization.partof.name : string |
| Rôle du membre du cercle de soins (contact) | participant:RelatedPerson.relationship: token |
| Rôle du membre du cercle de soins (exercice professionnel) | participant:PractitionerRole.role : token |
| Organisation responsable du cercle de soins | managingOrganization : Reference (paramètre custom) |

<!-- TODO MAJ ANNUAIRE -->

Tableau - Liste des critères de recherche de cercles de soins, paramètres de la requête HTTP GET

Le paramètre « _include »  pourra être utilisé pour demander le renvoi des ressources référencées par les éléments de la ressource « CareTeam », particulièrement par les éléments « subject » et « participant.member ».

Afin de pouvoir retourner les ressources référencées par la CareTeam de manière itérative à plusieurs niveaux d’imbrication, le modificateur « : iterate » devra être utilisé avec les paramètres « _include » et « _revinclude ». Afin de limiter le contenu renvoyé dans le résultat de la recherche, le paramètre « _elements »  pourra être utilisé pour lister les attributs de la ressource « CareTeam » à retourner par le serveur.

Exemples de requêtes

* Rechercher les ressources de type Careteam dont le sujet porte l’identifiant 123456. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par les ressources « CareTeam » retournées ainsi que les ressources référencées par ces-dites ressources.

"GET http://targetsystem.com/API/Careteam?_include:iterate=*&patient.identifier=http://exAutoriteAffectation/patient|123456" HTTP/1.1 

* Rechercher les ressources de type Careteam ayant un membre de type RelatedPerson portant le nom Ducros et vivant à Tourcoing. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par l’élément « subject » des ressources « Careteam » retournées, c’est-à-dire les ressources correspondant aux patients ayant cette personne tierce dans leur cercle de soins.
Pour plus d’information sur la syntaxe des requêtes de recherche veuillez consulter la documentation relative à l’interaction de recherche, « search », de l’API REST FHIR .

"GET http://targetsystem.com/API/Careteam?_include:iterate =CareTeam:subject&participant:RelatedPerson.name:exact=Ducros&participant:RelatedPerson.address=Tourcoing" HTTP/1.1 

#### Flux 3a : Réponse à la recherche de cercles de soins

Le flux 3a constitue la réponse à la requête GET du flux 2a. Lorsque la recherche s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « Bundle » de type « searchset » encapsulant 0, 1 à plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET.
Les flux 2a et 3a correspondent à la transaction IHE « Search for CareTeam » [PCC-46].

#### Flux 2b : Récupération d’un cercle de soins

Ce flux se base sur la requête de la transaction IHE « Retrieve Care Team » [PCC-47] du profil DCTM.
La récupération d’une ressource CareTeam correspondant à un identifiant spécifié est basée sur l’interaction « read » de FHIR .
Le flux 2b est donc une requête HTTP GET accompagnée du paramètre « id ».
La récupération d’une ressource CareTeam correspondant à un identifiant logique doit pouvoir être réalisée en s’appuyant sur l’interaction « vread » de FHIR  qui permet de tenir compte de la version de la ressource et sur l’interaction « history » qui permet de demander la récupération d’une version précise de la ressource  (history-instance et history-type devront être proposés).

Exemple de requête :

* Rechercher la deuxième version de la ressource CareTeam 123.

"GET http://targetsystem.com/API/Careteam/123/_history/2"

#### Flux 3b : Réponse à la récupération d’un cercle de soins

Le flux 3b constitue la réponse à la requête GET du flux 3a. Lorsque la requête s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « CareTeam » portant l’identifiant demandé et le cas échéant correspondant à la version précisée dans la requête. 
Les flux 2b et 3b de récupération d’un cercle de soins correspondent à la transaction IHE « Retrieve CareTeam » [PCC-47].

#### Flux 4b : Mise à jour d’un cercle de soins

Le flux de mise à jour de la ressource « CareTeam » est une requête HTTP PUT. La ressource « CareTeam » constitue le corps de la requête. La mise à jour de la ressource CareTeam nécessite de préciser l’identifiant logique de la ressource à mettre à jour. Ce flux se base sur la requête de la transaction IHE « Update Care Team » [PCC-45] du profil DCTM.
La mise à jour du cercle de soins doit pouvoir être réalisée en s’appuyant sur l’interaction « update » de FHIR.
Si la mise à jour du cercle de soins est correctement effectuée, le système gestionnaire retourne un code HTTP 200 ok. Pour des informations sur les autres codes HTTP (HTTP status codes) consultez la documentation relative à l’interaction de mise à jour, « update » de l’API REST FHIR.  
A la mise à jour du cercle de soins, le gestionnaire incrémente le numéro de version de la ressource (Careteam.meta.versionID) et indique la date de la mise à jour au niveau de Careteam.meta.LastUpdated.
