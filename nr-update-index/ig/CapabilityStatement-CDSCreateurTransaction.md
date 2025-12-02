# CI-SIS Gestion du Cercle de Soins - CreateurTransaction - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Gestion du Cercle de Soins - CreateurTransaction**

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - CreateurTransaction 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSCreateurTransaction | *Version*:2.0.1 |
| Active as of 2023-07-14 | *Computable Name*:CreateurTransaction-cds |

 
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne 

 [Raw OpenAPI-Swagger Definition file](CDSCreateurTransaction.openapi.json) | [Download](CDSCreateurTransaction.openapi.json) 

## CI-SIS Gestion du Cercle de Soins - CreateurTransaction

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


**Résumé des interactions au niveau du système**

* Supporte le/la `transaction`Les interactions sont décrites comme suit :

https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation


* Supporte le/la `transaction`Les interactions sont décrites comme suit :

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
