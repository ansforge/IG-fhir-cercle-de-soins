# Home - Cercle De Soins v2.0.1

## Home

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

 **CDS Implementation Guide**
 This implementation guide contains the profiles to share a patient's CareTeam. 

The Care Team (Cercle de Soins) identifies all actors (individuals, healthcare professionals and organisations) involved in the care coordination and health journey of a patient. A patient's Care Team can be exchanged to address the needs of the healthcare, administrative, medico-social and social domains.

### Profiled Resources

The list below shows the available profiles.

| | |
| :--- | :--- |
| Profile Title | Description |
| [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md) | Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. |
| [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type `transaction` permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type "transaction" permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md) | Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…). |
| [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md) | Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ». |
| [CDS Organization Profile](StructureDefinition-cds-organization.md) | Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI) |


### Transaction Flows Summary

| | | | |
| :--- | :--- | :--- | :--- |
| Flow 1 - CareTeamCreation | CareTeam Creation | Creator | Manager |
| Flow 2 - CareTeamSearch | CareTeam Consultation | Consumer | Manager |
| Flow 3 - CareTeamSearchResult | CareTeam Consultation | Manager | Consumer |
| Flow 4 - CareTeamUpdate | CareTeam Update | Creator | Manager |

### Guide Usage

This implementation guide is intended for developers of interoperable interfaces for systems implementing care team management, or for anyone involved in setting up such interfaces.

The interoperability specifications presented in this guide do not prejudge the conditions of their implementation within a shared information system. It is the responsibility of each data controller to ensure that services using these specifications comply with applicable frameworks and best practices (e.g. legal framework, security best practices, ergonomics, accessibility…).

Security constraints on exchanged flows are not covered in this document. These are the responsibility of each implementer, who is obliged to comply with the applicable legal framework.

### Dependencies









### Intellectual Property

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.2.0/CodeSystem-ISO3166Part1.html): [CDS](index.md), [CDSAsOrganization](StructureDefinition-cds-organization.md)... Show 16 more, [CDSBundleResponseRecherche](StructureDefinition-cds-bundle-response-recherche.md), [CDSBundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md), [CDSBundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md), [CDSCareTeam](StructureDefinition-cds-ihe-careteam.md), [CDSCareTeamEnd](SearchParameter-cds-careteam-end.md), [CDSCareTeamManagingOrganization](SearchParameter-cds-careteam-managing-organization.md), [CDSCareTeamParticipantEnd](SearchParameter-cds-careteam-participant-end.md), [CDSCareTeamParticipantStart](SearchParameter-cds-careteam-participant-start.md), [CDSCareTeamStart](SearchParameter-cds-careteam-start.md), [CDSFrRelatedPerson](StructureDefinition-cds-fr-related-person.md), [CDSPatientBirthplace](SearchParameter-cds-patient-birthplace.md), [CareTeamRolesValueSet](ValueSet-careteam-roles-vs.md), [CreateurTransaction-cds](CapabilityStatement-CDSCreateurTransaction.md), [consommateur-cds](CapabilityStatement-CDSConsommateur.md), [createur-restful-cds](CapabilityStatement-CDSCreateurRestful.md) and [gestionnaire-cds](CapabilityStatement-CDSGestionnaire.md)


### Authors and Contributors

| | | |
| :--- | :--- | :--- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |

