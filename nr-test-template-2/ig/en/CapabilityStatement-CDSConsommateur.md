# CI-SIS Gestion du Cercle de Soins - Consommateur - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - Consommateur 

 
Le rôle de consommateur incarné par un système, peut consulter un cercle de soins. Exemples de consommateur : un dossier patient informatisé, un système de gestion de laboratoire, un système d’information radiologique, un logiciel de gestion de cabinet, un service numérique d’appui à la coordination. 

 [Raw OpenAPI-Swagger Definition file](../CDSConsommateur.openapi.json) | [Download](../CDSConsommateur.openapi.json) 

-------

**English**

-------

## CI-SIS Gestion du Cercle de Soins - Consommateur

* Implementation Guide Version: 2.0.1 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `xml`
* Published on: 2023-07-14 
* Published by: ANS 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### SHALL Support the Following Implementation Guides

* [https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds](index.md)

## FHIR RESTful Capabilities

### Mode: client

Recherche de cercles de soins

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [CareTeam](#en-CareTeam1-1) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1](StructureDefinition-cds-ihe-careteam.md) | y | y | y |  |  | y | y | identifier, CDSCareTeamStart, CDSCareTeamEnd, status, _lastUpdated, category, date, participant, patient, subject, CDSCareTeamParticipantStart, CDSCareTeamParticipantEnd, CareTeamManagingOrganization |  |  |  |
| [Patient](#en-Patient1-2) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html) | y |  | y |  |  |  |  | identifier, family, given, name, address, birthdate, gender, birthplace |  |  |  |
| [RelatedPerson](#en-RelatedPerson1-3) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) | y |  | y |  |  |  |  | _id, name, relationship |  |  |  |
| [Organization](#en-Organization1-4) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1](StructureDefinition-cds-organization.md) | y |  | y |  |  |  |  | _id, name, identifier, partof |  |  |  |
| [PractitionerRole](#en-PractitionerRole1-5) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)**Additional supported profiles:**  [AS PractitionerRole Profileversion: 1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) | y |  | y |  |  |  |  | _id, practitioner, role |  |  |  |

-------

#### Resource Conformance: supported CareTeam

Base System Profile

[CDS CareTeam Profileversion: 2.0.1)](StructureDefinition-cds-ihe-careteam.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `vread`, `search-type`, `history-instance`, `history-type`.

Search Parameters


 

#### Resource Conformance: supported Patient

Base System Profile

[FR Core Patient Profileversion: 2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 

#### Resource Conformance: supported RelatedPerson

Base System Profile

[FR Core Related Person Profileversion: 2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 

#### Resource Conformance: supported Organization

Base System Profile

[CDS Organization Profileversion: 2.0.1)](StructureDefinition-cds-organization.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 

#### Resource Conformance: supported PractitionerRole

Base System Profile

[AS Practitioner Profileversion: 1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

Profile Conformance

**SHALL**

Reference Policy

Supported Profiles
[AS PractitionerRole Profileversion: 1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSConsommateur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSConsommateur",
  "version" : "2.0.1",
  "name" : "consommateur-cds",
  "title" : "CI-SIS Gestion du Cercle de Soins - Consommateur",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-07-14",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Le rôle de consommateur incarné par un système, peut consulter un cercle de soins.  Exemples  de  consommateur  :  un  dossier  patient  informatisé,  un  système  de  gestion  de  laboratoire,  un  système  d’information  radiologique,  un  logiciel  de  gestion de cabinet, un service numérique d’appui à la coordination.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "implementationGuide" : [
    "https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds"
  ],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Recherche de cercles de soins",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "CareTeam",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier|4.0.1",
              "type" : "token",
              "documentation" : "identifiant du cercle de soins"
            },
            {
              "name" : "CDSCareTeamStart",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start|2.0.1",
              "type" : "date",
              "documentation" : "date de création du cercle de soins"
            },
            {
              "name" : "CDSCareTeamEnd",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end|2.0.1",
              "type" : "date",
              "documentation" : "date de fin du cercle de soins"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-status|4.0.1",
              "type" : "token",
              "documentation" : "statut du cercle de soins"
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
              "type" : "date",
              "documentation" : "date de mise à jour du cercle de soins"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-category|4.0.1",
              "type" : "token",
              "documentation" : "Représente la catégorie cercle de soins."
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date|4.0.1",
              "type" : "date",
              "documentation" : "Représente la période couverte par le cercle de soins."
            },
            {
              "name" : "participant",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-participant|4.0.1",
              "type" : "reference",
              "documentation" : "Représente les participants impliqués dans le cercle de soins."
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient|4.0.1",
              "type" : "reference",
              "documentation" : "Représente le patient du cercle de soins."
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-subject|4.0.1",
              "type" : "reference",
              "documentation" : "Représente le sujet du cercle de soins."
            },
            {
              "name" : "CDSCareTeamParticipantStart",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start|2.0.1",
              "type" : "date",
              "documentation" : "Date d'entrée d'un membre du cercle de soins"
            },
            {
              "name" : "CDSCareTeamParticipantEnd",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-end|2.0.1",
              "type" : "date",
              "documentation" : "Date de sortie d'un membre du cercle de soins"
            },
            {
              "name" : "CareTeamManagingOrganization",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization|2.0.1",
              "type" : "reference",
              "documentation" : "Représente le paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche l'organisation responsable du cercle de soins."
            }
          ]
        },
        {
          "type" : "Patient",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier|4.0.1",
              "type" : "token",
              "documentation" : "Identifiant du patient"
            },
            {
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
              "type" : "string",
              "documentation" : "Nom de famille du patient"
            },
            {
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
              "type" : "string",
              "documentation" : "Prénom du patient"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name|4.0.1",
              "type" : "string",
              "documentation" : "Nom du patient"
            },
            {
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-address|4.0.1",
              "type" : "string",
              "documentation" : "Adresse du patient"
            },
            {
              "name" : "birthdate",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate|4.0.1",
              "type" : "date",
              "documentation" : "Date de naissance du patient"
            },
            {
              "name" : "gender",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender|4.0.1",
              "type" : "token",
              "documentation" : "Genre du patient"
            },
            {
              "name" : "birthplace",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace|2.0.1",
              "type" : "string",
              "documentation" : "Genre du patient"
            }
          ]
        },
        {
          "type" : "RelatedPerson",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
              "type" : "token",
              "documentation" : "Identifiant technique de la personne de confiance"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name|4.0.1",
              "type" : "string",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "relationship",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship|4.0.1",
              "type" : "token",
              "documentation" : "Relation entre le patient et la personne de confiance"
            }
          ]
        },
        {
          "type" : "Organization",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
              "type" : "token",
              "documentation" : "Identifiant technique de la personne de confiance"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name|4.0.1",
              "type" : "string",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
              "type" : "token",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "partof",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-partof|4.0.1",
              "type" : "reference",
              "documentation" : "Reference vers l'entite juridique"
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0"
          ],
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
              "type" : "token",
              "documentation" : "Identifiant technique du membre professionnel dans la situation d'exercice"
            },
            {
              "name" : "practitioner",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner|4.0.1",
              "type" : "reference",
              "documentation" : "Référence du professionnel"
            },
            {
              "name" : "role",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role|4.0.1",
              "type" : "token",
              "documentation" : "Rôle du membre de cercle de soins"
            }
          ]
        }
      ]
    }
  ]
}

```
