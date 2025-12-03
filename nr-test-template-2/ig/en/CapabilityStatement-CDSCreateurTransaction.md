# CI-SIS Gestion du Cercle de Soins - CreateurTransaction - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - CreateurTransaction 

 
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne 

 [Raw OpenAPI-Swagger Definition file](../CDSCreateurTransaction.openapi.json) | [Download](../CDSCreateurTransaction.openapi.json) 

-------

**English**

-------

## CI-SIS Gestion du Cercle de Soins - CreateurTransaction

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


**Summary of System-wide Interactions**

* Supports the `transaction`interaction described as follows:

https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation


* Supports the `transaction`interaction described as follows:

https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSCreateurTransaction",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSCreateurTransaction",
  "version" : "2.0.1",
  "name" : "CreateurTransaction-cds",
  "title" : "CI-SIS Gestion du Cercle de Soins - CreateurTransaction",
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
  "description" : "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne",
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
