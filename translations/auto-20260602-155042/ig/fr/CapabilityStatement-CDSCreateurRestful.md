# CI-SIS Gestion du Cercle de Soins - CreateurRestful - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Gestion du Cercle de Soins - CreateurRestful 

 
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne 

 [Fichier de définition d'OpenAPI-Swagger](../CDSCreateurRestful.openapi.json) | [Télécharger](../CDSCreateurRestful.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSCreateurRestful",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSCreateurRestful",
  "version" : "2.0.1",
  "name" : "createur-restful-cds",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "createur-restful-cds"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CI-SIS Gestion du Cercle de Soins - CreateurRestful",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CI-SIS Care Circle Management - CreateurRestful"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2023-07-14",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "Envoie une requete pour créer ou mettre à jour un cercle de soins",
    "_documentation" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Sends a request to create or update a care circle"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)",
      "_description" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The ANS provides repositories dedicated to security policy (PGSSI-S) and security mechanisms are defined in the Transport layer sections of the Interoperability Framework for Health Information Systems (CI-SIS)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    "resource" : [{
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "CareTeam",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      }]
    }]
  }]
}

```
