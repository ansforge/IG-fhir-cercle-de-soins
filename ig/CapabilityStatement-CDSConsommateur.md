# CI-SIS Gestion du Cercle de Soins - Consommateur - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Gestion du Cercle de Soins - Consommateur**

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - Consommateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSConsommateur | *Version*:2.0.1 |
| Active as of 2023-07-14 | *Computable Name*:consommateur-cds |

 
Le rôle de consommateur incarné par un système, peut consulter un cercle de soins. Exemples de consommateur : un dossier patient informatisé, un système de gestion de laboratoire, un système d’information radiologique, un logiciel de gestion de cabinet, un service numérique d’appui à la coordination. 

 [Raw OpenAPI-Swagger Definition file](CDSConsommateur.openapi.json) | [Download](CDSConsommateur.openapi.json) 

## CI-SIS Gestion du Cercle de Soins - Consommateur

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `json`, `xml`
* Publié sur : 2023-07-14 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* [https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds](index.md)

## Capacités RESTful FHIR

### Mode: client

Recherche de cercles de soins

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


### Capacités par ressource/profil

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [CareTeam](#CareTeam1-1) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam](StructureDefinition-cds-ihe-careteam.md) | y | y | y |  |  | y | y | identifier, CDSCareTeamStart, CDSCareTeamEnd, status, _lastUpdated, category, date, participant, patient, subject, CDSCareTeamParticipantStart, CDSCareTeamParticipantEnd, CareTeamManagingOrganization |  |  |  |
| [Patient](#Patient1-2) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html) | y |  | y |  |  |  |  | identifier, family, given, name, address, birthdate, gender, birthplace |  |  |  |
| [RelatedPerson](#RelatedPerson1-3) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) | y |  | y |  |  |  |  | _id, name, relationship |  |  |  |
| [Organization](#Organization1-4) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization](StructureDefinition-cds-organization.md) | y |  | y |  |  |  |  | _id, name, identifier, partof |  |  |  |
| [PractitionerRole](#PractitionerRole1-5) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)**Profils additionnels supportés :**  [AS PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) | y |  | y |  |  |  |  | _id, practitioner, role |  |  |  |

-------

#### Conformité de la ressource : supported CareTeam

Profil système de base

[CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `vread`, `search-type`, `history-instance`, `history-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Patient

Profil système de base

[FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported RelatedPerson

Profil système de base

[FR Core Related Person Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Organization

Profil système de base

[CDS Organization Profile](StructureDefinition-cds-organization.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported PractitionerRole

Profil système de base

[AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

Conformité au Profil

**SHALL**

Politique de référence

Profils supportés
[AS PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)

Résumé des interactions

* Supporte `read`, `search-type`.

Paramètres de recherche


 



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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "identifiant du cercle de soins"
            },
            {
              "name" : "CDSCareTeamStart",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start",
              "type" : "date",
              "documentation" : "date de création du cercle de soins"
            },
            {
              "name" : "CDSCareTeamEnd",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end",
              "type" : "date",
              "documentation" : "date de fin du cercle de soins"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-status",
              "type" : "token",
              "documentation" : "statut du cercle de soins"
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "date de mise à jour du cercle de soins"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-category",
              "type" : "token",
              "documentation" : "Représente la catégorie cercle de soins."
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "Représente la période couverte par le cercle de soins."
            },
            {
              "name" : "participant",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-participant",
              "type" : "reference",
              "documentation" : "Représente les participants impliqués dans le cercle de soins."
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Représente le patient du cercle de soins."
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-subject",
              "type" : "reference",
              "documentation" : "Représente le sujet du cercle de soins."
            },
            {
              "name" : "CDSCareTeamParticipantStart",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
              "type" : "date",
              "documentation" : "Date d'entrée d'un membre du cercle de soins"
            },
            {
              "name" : "CDSCareTeamParticipantEnd",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-end",
              "type" : "date",
              "documentation" : "Date de sortie d'un membre du cercle de soins"
            },
            {
              "name" : "CareTeamManagingOrganization",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
              "type" : "reference",
              "documentation" : "Représente le paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche l'organisation responsable du cercle de soins."
            }
          ]
        },
        {
          "type" : "Patient",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token",
              "documentation" : "Identifiant du patient"
            },
            {
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Nom de famille du patient"
            },
            {
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Prénom du patient"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name",
              "type" : "string",
              "documentation" : "Nom du patient"
            },
            {
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-address",
              "type" : "string",
              "documentation" : "Adresse du patient"
            },
            {
              "name" : "birthdate",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate",
              "type" : "date",
              "documentation" : "Date de naissance du patient"
            },
            {
              "name" : "gender",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender",
              "type" : "token",
              "documentation" : "Genre du patient"
            },
            {
              "name" : "birthplace",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace",
              "type" : "string",
              "documentation" : "Genre du patient"
            }
          ]
        },
        {
          "type" : "RelatedPerson",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Identifiant technique de la personne de confiance"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name",
              "type" : "string",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "relationship",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship",
              "type" : "token",
              "documentation" : "Relation entre le patient et la personne de confiance"
            }
          ]
        },
        {
          "type" : "Organization",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Identifiant technique de la personne de confiance"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token",
              "documentation" : "Nom de la personne de confiance"
            },
            {
              "name" : "partof",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-partof",
              "type" : "reference",
              "documentation" : "Reference vers l'entite juridique"
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole"
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Identifiant technique du membre professionnel dans la situation d'exercice"
            },
            {
              "name" : "practitioner",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner",
              "type" : "reference",
              "documentation" : "Référence du professionnel"
            },
            {
              "name" : "role",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role",
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
