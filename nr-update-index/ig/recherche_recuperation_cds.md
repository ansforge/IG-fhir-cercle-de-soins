# Recherche CDS - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Recherche CDS**

## Recherche CDS

### Flux 2a : recherche de cercles de soins

```
Plus d'informations sur la search en FHIR sur la documentation officielle
https://www.hl7.org/fhir/R4/search.html

```

Ce flux se base sur la requête de la transaction IHE « Search for Care Team » [PCC-46] du profil DCTM reposant sur l’interaction « search » de FHIR.

La requête GET est accompagnée des paramètres de recherches définis dans le [CapabilityStatement du Gestionnaire](CapabilityStatement-CDSGestionnaire.md). Ces critères de recherche ont été définis dans les [Spécification Fonctionnelle](specifications_fonctionnelles.md).

Des paramètres de recherche chaînés doivent être définis afin de répondre à ces attentes, certains exemples peuvent être trouvés dans le tableau ci-dessous :

| | |
| :--- | :--- |
| Identifiant du membre du cercle de soins (contact) | participant:RelatedPerson._id : token |
| Identifiant du membre du cercle de soins (professionnel dans une situation d’exercice) | participant:PractitionerRole._id : token |
| Identifiant du membre du cercle de soins (entité géographique) | participant:Organization._id : token |
| Identifiant de l’entité géographique, de l’entité juridique | participant:Organization.identifier : token |
| Identifiant du professionnel | participant:PractitionerRole.practitioner:Practitioner.identifier |
| Nom du membre du cercle de soins (contact) | participant:RelatedPerson.name: string |
| Nom du membre du cercle de soins (professionnel dans un exercice professionnel ou dans une situation d’exercice) | participant:PractitionerRole.practitioner.name : string (paramètre custom) |
| Nom du membre du cercle de soins (entité géographique) | participant:Organization.name : string |
| Raison sociale de l’Entité Juridique | participant:Organization.partof.name : string |
| Rôle du membre du cercle de soins (contact) | participant:RelatedPerson.relationship: token |
| Rôle du membre du cercle de soins (exercice professionnel) | participant:PractitionerRole.role : token |

Les paramètres «_include » et «_revinclude » peuvent être utilisés pour récupérer les ressources référencées. Le paramètre « _elements » peut être utilisé pour limiter les attributs retournés par le serveur.

#### Exemples de requêtes

* Rechercher les ressources de type Careteam dont le sujet porte l’identifiant 123456. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par les ressources « CareTeam » retournées ainsi que les ressources référencées par ces-dites ressources.

GET http://targetsystem.com/API/Careteam?_include:iterate=*&patient.identifier=http://exAutoriteAffectation/patient|123456

* Rechercher les ressources de type Careteam ayant un membre de type RelatedPerson portant le nom Ducros et vivant à Tourcoing. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par l’élément « subject » des ressources « Careteam » retournées, c’est-à-dire les ressources correspondant aux patients ayant cette personne tierce dans leur cercle de soins.

GET http://targetsystem.com/API/Careteam?_include:iterate =CareTeam:subject&participant:RelatedPerson.name:exact=Ducros&participant:RelatedPerson.address=Tourcoing

### Flux 3a : Réponse à la recherche de cercles de soins

Le flux 3a constitue la réponse à la requête GET du flux 2a. Lorsque la recherche s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « Bundle » de type « searchset » encapsulant 0, 1 à plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. Les flux 2a et 3a correspondent à la transaction IHE « Search for CareTeam » [PCC-46].

### Flux 2b : Récupération d’un cercle de soins

Ce flux se base sur la requête de la transaction IHE « Retrieve Care Team » [PCC-47] du profil DCTM. La récupération d’une ressource CareTeam correspondant à un identifiant spécifié est basée sur l’interaction « read » de FHIR. Le flux 2b est donc une requête HTTP GET accompagnée du paramètre « id ».

La récupération d’une ressource CareTeam correspondant à un identifiant logique doit pouvoir être réalisée en s’appuyant sur l’interaction « vread » de FHIR qui permet de tenir compte de la version de la ressource et sur l’interaction « history » qui permet de demander la récupération d’une version précise de la ressource (history-instance et history-type devront être proposés).

* Exemple de requête - rechercher la deuxième version de la ressource CareTeam 123

GET http://targetsystem.com/API/Careteam/123/_history/2

### Flux 3b : réponse à la récupération d’un cercle de soins

Le flux 3b constitue la réponse à la requête GET du flux 3a. Lorsque la requête s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « CareTeam » portant l’identifiant demandé et le cas échéant correspondant à la version précisée dans la requête. Les flux 2b et 3b de récupération d’un cercle de soins correspondent à la transaction IHE « Retrieve CareTeam » [PCC-47].

