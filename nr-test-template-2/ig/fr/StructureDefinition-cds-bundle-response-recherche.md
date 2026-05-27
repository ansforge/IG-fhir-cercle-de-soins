# CDS Bundle Response Recherche Profile - Cercle De Soins v2.0.1

## Profil de ressource: CDS Bundle Response Recherche Profile 

 
Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-bundle-response-recherche)

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

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))
 Interdit : 12 éléments

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

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))
 Interdit : 12 éléments

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

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-bundle-response-recherche.csv), [Excel](../StructureDefinition-cds-bundle-response-recherche.xlsx), [Schematron](../StructureDefinition-cds-bundle-response-recherche.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-bundle-response-recherche",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-response-recherche",
  "version" : "2.0.1",
  "name" : "CDSBundleResponseRecherche",
  "title" : "CDS Bundle Response Recherche Profile",
  "status" : "active",
  "date" : "2026-05-27T15:54:25+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET.",
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
      "patternCode" : "searchset"
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
      }
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
      "type" : [{
        "code" : "CareTeam",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1"]
      }]
    },
    {
      "id" : "Bundle.entry:careTeam.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "match"
    },
    {
      "id" : "Bundle.entry:careTeam.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:patient.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:patient.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "id" : "Bundle.entry:relatedPerson.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:relatedPerson.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "id" : "Bundle.entry:organization.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:organization.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerRoleOrg.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:practitionerRoleOrg.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
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
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerPro.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:practitionerPro.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:practitionerPro.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    }]
  }
}

```
