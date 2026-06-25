# CDS Bundle Transaction Creation Profile - Cercle De Soins v2.0.1

## Profil de ressource: CDS Bundle Transaction Creation Profile 

 
Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type `transaction` permettant d'organiser le contenu du flux de création d'un cercle de soins. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Bundle/cds-bundle-transaction-creation-example](Bundle-cds-bundle-transaction-creation-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-bundle-transaction-creation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 4 éléments(4 éléments obligatoire(s) imbriqué(s))
 Interdit : 6 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [CDS CareTeam Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1)](StructureDefinition-cds-ihe-careteam.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)
* [CDS Fr RelatedPerson Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1)](StructureDefinition-cds-fr-related-person.md)
* [CDS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1)](StructureDefinition-cds-organization.md)
* [AS PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)
* [AS Practitioner Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 4 éléments(4 éléments obligatoire(s) imbriqué(s))
 Interdit : 6 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [CDS CareTeam Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1)](StructureDefinition-cds-ihe-careteam.md)
* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)
* [CDS Fr RelatedPerson Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1)](StructureDefinition-cds-fr-related-person.md)
* [CDS Organization Profile (https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1)](StructureDefinition-cds-organization.md)
* [AS PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)
* [AS Practitioner Profile (https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-bundle-transaction-creation.csv), [Excel](../StructureDefinition-cds-bundle-transaction-creation.xlsx), [Schematron](../StructureDefinition-cds-bundle-transaction-creation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-bundle-transaction-creation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation",
  "version" : "2.0.1",
  "name" : "CDSBundleTransactionCreation",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDSBundleTransactionCreation"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CDS Bundle Transaction Creation Profile",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDS Bundle Transaction Creation Profile"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-06-25T14:53:07+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction.\nIl s'agit d'un bundle de type `transaction` permettant d'organiser le contenu du flux de création d'un cercle de soins.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Bundle.entry:careTeam",
      "path" : "Bundle.entry",
      "sliceName" : "careTeam",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:careTeam.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CareTeam",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:careTeam.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
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
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:patient.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
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
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:relatedPerson.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
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
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:organization.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
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
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Situation d'exercice du PS (PractitionerRole)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitionerRoleOrg.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerRoleOrg.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
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
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Exercice professionnel du PS (Practitioner)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitionerPro.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerPro.request.method",
      "path" : "Bundle.entry.request.method",
      "constraint" : [{
        "key" : "req-met",
        "severity" : "error",
        "human" : "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà.",
        "expression" : "value='POST' or value='PUT'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation|2.0.1"
      }]
    },
    {
      "id" : "Bundle.entry:practitionerPro.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    }]
  }
}

```
