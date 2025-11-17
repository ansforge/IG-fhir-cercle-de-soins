# CDS Bundle Transaction MAJ Profile - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDS Bundle Transaction MAJ Profile**

## Resource Profile: CDS Bundle Transaction MAJ Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj | *Version*:2.0.0 |
| Active as of 2025-11-17 | *Computable Name*:CDSBundleTransactionMAJ |

 
Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type "transaction" permettant d'organiser le contenu du flux de création d'un cercle de soins. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-bundle-transaction-maj)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cds-bundle-transaction-maj.csv), [Excel](StructureDefinition-cds-bundle-transaction-maj.xlsx), [Schematron](StructureDefinition-cds-bundle-transaction-maj.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-bundle-transaction-maj",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj",
  "version" : "2.0.0",
  "name" : "CDSBundleTransactionMAJ",
  "title" : "CDS Bundle Transaction MAJ Profile",
  "status" : "active",
  "date" : "2025-11-17T14:06:25+00:00",
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
  "description" : "Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction.\nIl s'agit d'un bundle de type \"transaction\" permettant d'organiser le contenu du flux de création d'un cercle de soins.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:careTeam",
        "path" : "Bundle.entry",
        "sliceName" : "careTeam",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:careTeam.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "CareTeam",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:careTeam.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:careTeam.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:relatedPerson",
        "path" : "Bundle.entry",
        "sliceName" : "relatedPerson",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:relatedPerson.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "RelatedPerson",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:relatedPerson.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:relatedPerson.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:organization",
        "path" : "Bundle.entry",
        "sliceName" : "organization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:organization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:organization.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:organization.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:practitionerRoleOrg",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerRoleOrg",
        "short" : "Situation d'exercice du PS (PractitionerRole)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerRoleOrg.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerRoleOrg.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerRoleOrg.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:practitionerPro",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerPro",
        "short" : "Exercice professionnel du PS (Practitioner)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerPro.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerPro.request.method",
        "path" : "Bundle.entry.request.method",
        "constraint" : [
          {
            "key" : "req-met",
            "severity" : "error",
            "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
            "expression" : "value='POST' or value='PUT'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerPro.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      }
    ]
  }
}

```
