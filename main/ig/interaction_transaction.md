# Interactions transaction - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Interactions transaction**

## Interactions transaction

### Création d’un cercle de soins

La première étape de la construction de ce flux de création du cercle de soins consiste à organiser son contenu. Plusieurs types de ressources sont présents :

* La ressource CareTeam (profil [CDS_IHECareTeam](StructureDefinition-cds-ihe-careteam.md)),
* La ressource référencée en tant que sujet du Cercle de Soins : la ressource Patient respectant le profil FrCorePatientProfile, contenant de préférence un identifier, un telecom et une address,
* La ou les ressources référencées comme membres du Cercle de Soins, et celles qu’elles référencent, parmi les ressources suivantes : 
* PractitionerRole (profil ASPractitionerRole) pour représenter la situation d’exercice particulière d’un professionnel. 
* Avec Practitioner (profil ASPractitioner) référencée depuis PractitionerRole.practitioner (Exercice professionnel).
 
* RelatedPerson (profil [CDS_FrRelatedperson](StructureDefinition-cds-fr-related-person.md)) pour représenter une personne tierce,
* Organization (profil CDSAsOrganization) pour représenter une entité géographique (EG), une entité juridique (EJ) ou une organisation interne (OI)
* Ou aucune si le seul membre est la personne prise en charge déjà référencée comme sujet du Cercle de Soins.
 

Ces ressources sont encapsulées dans une ressource « Bundle » de type « transaction » conforme au profil [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md). Le Bundle contient à minima une ressource CareTeam. Ce Bundle constitue le corps de la requête HTTP POST.


Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à POST pour les nouvelles ressources à poster sur le serveur :

* Pour la ressource CareTeam, l’attribut request.method sera positionné à POST,
* Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera positionné à POST.

La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.

Si la transaction a été correctement effectuée et donc que la création du cercle de soins est correctement effectuée, un code HTTP 200 ok est retourné . Un Bundle de type transaction-response doit être renvoyé dans le corps de la réponse . Ce dernier doit contenir les ressources telles qu’elles ont été créées par le gestionnaire ou, à minima, les identifiants logiques des ressources ayant été attribués par le gestionnaire (dans Bundle.entry.fullUrl et/ou Bundle.entry.resource.id). Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.

### Mise à jour de cercles de soins

Le Bundle [CDS_BundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md) peut contenir exactement les mêmes ressources que le [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md). Le Bundle contient à minima une ressource CareTeam ; concernant les acteurs, seules la ou les ressources qui doivent être créées ou mises à jour sont inclues dans le bundle. Ce Bundle constitue le corps de la requête HTTP POST.


Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à PUT pour chaque ressource à mettre à jour ou à POST pour chaque nouvelle ressource à créer sur le serveur :

* Pour la ressource CareTeam, l’attribut request.method sera positionné à PUT,
* Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera alors positionné à POST s’il s’agit d’un nouvel acteur ou à PUT pour mettre à jour un membre.

La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.

