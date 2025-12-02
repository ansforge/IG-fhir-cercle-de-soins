# Artifacts Summary - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [CI-SIS Gestion du Cercle de Soins - Consommateur](CapabilityStatement-CDSConsommateur.md) | Le rôle de consommateur incarné par un système, peut consulter un cercle de soins. Exemples de consommateur : un dossier patient informatisé, un système de gestion de laboratoire, un système d’information radiologique, un logiciel de gestion de cabinet, un service numérique d’appui à la coordination. |
| [CI-SIS Gestion du Cercle de Soins - CreateurRestful](CapabilityStatement-CDSCreateurRestful.md) | Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne |
| [CI-SIS Gestion du Cercle de Soins - CreateurTransaction](CapabilityStatement-CDSCreateurTransaction.md) | Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne |
| [CI-SIS Gestion du Cercle de Soins - Gestionnaire](CapabilityStatement-CDSGestionnaire.md) | Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins, donne accès aux informations en cas de consultation. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [cds-careteam-end](SearchParameter-cds-careteam-end.md) | Recherche sur la date de fin du cercle de soins |
| [cds-careteam-managing-organization](SearchParameter-cds-careteam-managing-organization.md) | Organisation responsable du Cercle De Soins |
| [cds-careteam-participant-end](SearchParameter-cds-careteam-participant-end.md) | Date de sortie d’un membre du cercle de soins |
| [cds-careteam-participant-start](SearchParameter-cds-careteam-participant-start.md) | Date d’entrée d’un membre du cercle de soins |
| [cds-careteam-start](SearchParameter-cds-careteam-start.md) | Recherche sur la date de création du cercle de soins |
| [cds-patient-birthplace](SearchParameter-cds-patient-birthplace.md) | Lieu de naissance du patient |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md) | Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. |
| [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type`transaction`permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type "transaction" permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md) | Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ». |
| [CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md) | Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…). |
| [CDS Organization Profile](StructureDefinition-cds-organization.md) | Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Roles des participants dans un cercle de soins](ValueSet-careteam-roles-vs.md) | Roles des participants dans un cercle de soins. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [cds-bundle-transaction-creation-example](Bundle-cds-bundle-transaction-creation-example.md) |
| [cds-careteam-example](CareTeam-cds-careteam-example.md) |
| [cds-organization-example](Organization-cds-organization-example.md) |
| [cds-patient-example](Patient-cds-patient-example.md) |
| [cds-relatedperson-example](RelatedPerson-cds-relatedperson-example.md) |

