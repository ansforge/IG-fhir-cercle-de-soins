# CDS Fr RelatedPerson Profile - Cercle De Soins v2.0.1

## Resource Profile: CDS Fr RelatedPerson Profile 

 
Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…). 

**Usages:**

* Use this Profile: [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md), [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) and [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md)
* Refer to this Profile: [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)
* Examples for this Profile: [RelatedPerson/cds-relatedperson-example](RelatedPerson-cds-relatedperson-example.md)
* CapabilityStatements using this Profile: [CI-SIS Gestion du Cercle de Soins - CreateurRestful](CapabilityStatement-CDSCreateurRestful.md) and [CI-SIS Gestion du Cercle de Soins - Gestionnaire](CapabilityStatement-CDSGestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-fr-related-person.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-fr-related-person.csv), [Excel](../StructureDefinition-cds-fr-related-person.xlsx), [Schematron](../StructureDefinition-cds-fr-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-fr-related-person",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
  "version" : "2.0.1",
  "name" : "CDSFrRelatedPerson",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDSFrRelatedPerson"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CDS Fr RelatedPerson Profile",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDS Fr RelatedPerson Profile"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-06-25T15:48:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship:Role",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "Role",
      "short" : "Rôle de la personne",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Rôle de la personne"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "RelatedPerson.relationship:RelationType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "RelationType",
      "short" : "Relation de la personne",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relation de la personne"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
