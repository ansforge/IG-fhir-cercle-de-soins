# CI-SIS Gestion du Cercle de Soins - CreateurRestful - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - CreateurRestful 

 
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne 

 [Raw OpenAPI-Swagger Definition file](../CDSCreateurRestful.openapi.json) | [Download](../CDSCreateurRestful.openapi.json) 

-------

**English**

-------

## CI-SIS Gestion du Cercle de Soins - CreateurRestful

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

Envoie une requete pour créer ou mettre à jour un cercle de soins

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

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#en-Patient1-1) | [https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html) |  |  | y | y |  |  |  |  |
| [Practitioner](#en-Practitioner1-2) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) |  |  | y | y |  |  |  |  |
| [PractitionerRole](#en-PractitionerRole1-3) | [https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) |  |  | y | y |  |  |  |  |
| [RelatedPerson](#en-RelatedPerson1-4) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1](StructureDefinition-cds-fr-related-person.md) |  |  | y | y |  |  |  |  |
| [Organization](#en-Organization1-5) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1](StructureDefinition-cds-organization.md) |  |  | y | y |  |  |  |  |
| [CareTeam](#en-CareTeam1-6) | [https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1](StructureDefinition-cds-ihe-careteam.md) |  |  | y | y |  |  |  |  |

-------

#### Resource Conformance: supported Patient

Base System Profile

[FR Core Patient Profileversion: 2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.

#### Resource Conformance: supported Practitioner

Base System Profile

[AS Practitioner Profileversion: 1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.

#### Resource Conformance: supported PractitionerRole

Base System Profile

[AS PractitionerRole Profileversion: 1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.

#### Resource Conformance: supported RelatedPerson

Base System Profile

[CDS Fr RelatedPerson Profileversion: 2.0.1)](StructureDefinition-cds-fr-related-person.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.

#### Resource Conformance: supported Organization

Base System Profile

[CDS Organization Profileversion: 2.0.1)](StructureDefinition-cds-organization.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.

#### Resource Conformance: supported CareTeam

Base System Profile

[CDS CareTeam Profileversion: 2.0.1)](StructureDefinition-cds-ihe-careteam.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`, `update`.



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
          "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0",
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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1",
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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1",
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
          "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1",
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
