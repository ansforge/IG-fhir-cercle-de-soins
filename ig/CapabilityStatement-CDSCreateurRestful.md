# CI-SIS Gestion du Cercle de Soins - CreateurRestful - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Gestion du Cercle de Soins - CreateurRestful**

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - CreateurRestful 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSCreateurRestful | *Version*:2.0.1 |
| Active as of 2023-07-14 | *Computable Name*:createur-restful-cds |

 
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne 

 [Raw OpenAPI-Swagger Definition file](CDSCreateurRestful.openapi.json) | [Download](CDSCreateurRestful.openapi.json) 

## CI-SIS Gestion du Cercle de Soins - CreateurRestful

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

Envoie une requete pour créer ou mettre à jour un cercle de soins

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

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html) |  |  | y | y |  |  |  |  |
| [Practitioner](#Practitioner1-2) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) |  |  | y | y |  |  |  |  |
| [PractitionerRole](#PractitionerRole1-3) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) |  |  | y | y |  |  |  |  |
| [RelatedPerson](#RelatedPerson1-4) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person](StructureDefinition-cds-fr-related-person.md) |  |  | y | y |  |  |  |  |
| [Organization](#Organization1-5) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization](StructureDefinition-cds-organization.md) |  |  | y | y |  |  |  |  |
| [CareTeam](#CareTeam1-6) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam](StructureDefinition-cds-ihe-careteam.md) |  |  | y | y |  |  |  |  |

-------

#### Conformité de la ressource : supported Patient

Profil système de base

[FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

#### Conformité de la ressource : supported Practitioner

Profil système de base

[AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

#### Conformité de la ressource : supported PractitionerRole

Profil système de base

[AS PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

#### Conformité de la ressource : supported RelatedPerson

Profil système de base

[CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

#### Conformité de la ressource : supported Organization

Profil système de base

[CDS Organization Profile](StructureDefinition-cds-organization.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.

#### Conformité de la ressource : supported CareTeam

Profil système de base

[CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSCreateurRestful",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSCreateurRestful",
  "version" : "2.0.1",
  "name" : "createur-restful-cds",
  "title" : "CI-SIS Gestion du Cercle de Soins - CreateurRestful",
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
  "description" : "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne ",
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
      "documentation" : "Envoie une requete pour créer ou mettre à jour un cercle de soins",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
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
            }
          ]
        },
        {
          "type" : "CareTeam",
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            }
          ]
        }
      ]
    }
  ]
}

```
