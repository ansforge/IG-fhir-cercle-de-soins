# CI-SIS Gestion du Cercle de Soins - Gestionnaire - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Gestion du Cercle de Soins - Gestionnaire**

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - Gestionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSGestionnaire | *Version*:2.0.1 |
| Active as of 2023-07-14 | *Computable Name*:gestionnaire-cds |

 
Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins, donne accès aux informations en cas de consultation. 

 [Raw OpenAPI-Swagger Definition file](CDSGestionnaire.openapi.json) | [Download](CDSGestionnaire.openapi.json) 

## CI-SIS Gestion du Cercle de Soins - Gestionnaire

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `json`, `xml`
* Publié sur : 2023-07-14 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* [https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds](index.md)

## Capacités RESTful FHIR

### Mode: server

Création et mise à jour des cercles de soins

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


**Résumé des interactions au niveau du système**

* Supporte le/la `transaction`Les interactions sont décrites comme suit :

https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation


* Supporte le/la `transaction`Les interactions sont décrites comme suit :

https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj


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
| [CareTeam](#CareTeam1-1) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam](StructureDefinition-cds-ihe-careteam.md) | y | y | y | y | y | y | y | identifier, start, end, status, _lastUpdated, category, participant-start, participant-end, date, participant, patient, subject, managingOrganization |  |  |  |
| [Patient](#Patient1-2) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html) | y |  | y | y | y |  |  | identifier, family, given, name, address, birthdate, gender, birthplace |  |  |  |
| [RelatedPerson](#RelatedPerson1-3) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person](StructureDefinition-cds-fr-related-person.md) | y |  | y | y | y |  |  | _id, name, relationship |  |  |  |
| [Practitioner](#Practitioner1-4) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) | y |  | y | y | y |  |  | identifier, name |  |  |  |
| [PractitionerRole](#PractitionerRole1-5) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) | y |  | y | y | y |  |  | _id, practitioner, role |  |  |  |
| [Organization](#Organization1-6) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization](StructureDefinition-cds-organization.md) | y |  | y | y | y |  |  | _id, identifier, name |  |  |  |

-------

#### Conformité de la ressource : supported CareTeam

Profil système de base

[CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `update`, `search-type`, `read`, `create`, `vread`, `history-instance`, `history-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Patient

Profil système de base

[FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported RelatedPerson

Profil système de base

[CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Practitioner

Profil système de base

[AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported PractitionerRole

Profil système de base

[AS PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `read`, `search-type`.

Paramètres de recherche


 

#### Conformité de la ressource : supported Organization

Profil système de base

[CDS Organization Profile](StructureDefinition-cds-organization.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `read`, `search-type`.

Paramètres de recherche


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSGestionnaire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSGestionnaire",
  "version" : "2.0.1",
  "name" : "gestionnaire-cds",
  "title" : "CI-SIS Gestion du Cercle de Soins - Gestionnaire",
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
  "description" : "Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins,\ndonne accès aux informations en cas de consultation.",
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
      "mode" : "server",
      "documentation" : "Création et mise à jour des cercles de soins",
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
              "code" : "update"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "create"
            },
            {
              "code" : "vread"
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
              "documentation" : "Recherche selon l'identifiant du cercle de soins"
            },
            {
              "name" : "start",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start",
              "type" : "date",
              "documentation" : "Recherche selon la date de création du cercle de soins (Paramètre créé dans le cadre de ce guide)."
            },
            {
              "name" : "end",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end",
              "type" : "date",
              "documentation" : "Recherche selon la date de fin du cercle de soins (Paramètre créé dans le cadre de ce guide)."
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-status",
              "type" : "token",
              "documentation" : "Recherche selon le du cercle de soins"
            },
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "Recherche selon la date de mise à jour du cercle de soins"
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-category",
              "type" : "token",
              "documentation" : "Recherche selon la catégorie de cercle de soins."
            },
            {
              "name" : "participant-start",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
              "type" : "date",
              "documentation" : "Recherche selon la date d'entrée d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide)."
            },
            {
              "name" : "participant-end",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
              "type" : "date",
              "documentation" : "Recherche selon la date de sortie d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide)."
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "Recherche selon la période couverte par le cercle de soins."
            },
            {
              "name" : "participant",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-participant",
              "type" : "reference",
              "documentation" : "Recherche selon les participants impliqués dans le cercle de soins."
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Recherche selon le patient impliqué dans le cercle de soins."
            },
            {
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-subject",
              "type" : "reference",
              "documentation" : "Recherche selon le sujet impliqué dans le cercle de soins."
            },
            {
              "name" : "managingOrganization",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
              "type" : "reference",
              "documentation" : "Recherche selon l'organisation responsable du cercle de soins (Paramètre créé dans le cadre de ce guide)."
            }
          ]
        },
        {
          "type" : "Patient",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
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
              "documentation" : "Recherche selon l'identifiant du patient"
            },
            {
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Recherche selon le nom de famille du patient"
            },
            {
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string",
              "documentation" : "Recherche selon le prénom du patient"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name",
              "type" : "string",
              "documentation" : "Recherche selon le nom du patient"
            },
            {
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-address",
              "type" : "string",
              "documentation" : "Recherche selon l'adresse du patient"
            },
            {
              "name" : "birthdate",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate",
              "type" : "date",
              "documentation" : "Recherche selon la date de naissance du patient"
            },
            {
              "name" : "gender",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender",
              "type" : "token",
              "documentation" : "Recherche selon le genre du patient"
            },
            {
              "name" : "birthplace",
              "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace",
              "type" : "string",
              "documentation" : "Recherche selon le lieu de naissance du patient"
            }
          ]
        },
        {
          "type" : "RelatedPerson",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
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
              "documentation" : "Recherche selon l'identifiant technique de la personne de confiance"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name",
              "type" : "string",
              "documentation" : "Recherche selon le nom de la personne de confiance"
            },
            {
              "name" : "relationship",
              "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship",
              "type" : "token",
              "documentation" : "Recherche selon la relation entre le patient et la personne de confiance"
            }
          ]
        },
        {
          "type" : "Practitioner",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
              "type" : "token",
              "documentation" : "Recherche selon l'identifiant du practicien"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string",
              "documentation" : "Recherche selon le nom du practicien"
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
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
        },
        {
          "type" : "Organization",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
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
              "documentation" : "Recherche selon l'identifiant technique de l'organisation"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token",
              "documentation" : "Recherche selon l'identifiant de l'organisation"
            },
            {
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string",
              "documentation" : "Recherche selon le nom de l'organisation"
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "transaction",
          "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation"
        },
        {
          "code" : "transaction",
          "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
        }
      ]
    }
  ]
}

```
