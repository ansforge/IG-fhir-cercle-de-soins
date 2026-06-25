# CDS Bundle Response Recherche Profile - Cercle De Soins v2.0.1

## Resource Profile: CDS Bundle Response Recherche Profile 

 
Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-bundle-response-recherche.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-bundle-response-recherche.csv), [Excel](../StructureDefinition-cds-bundle-response-recherche.xlsx), [Schematron](../StructureDefinition-cds-bundle-response-recherche.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-bundle-response-recherche",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-response-recherche",
  "version" : "2.0.1",
  "name" : "CDSBundleResponseRecherche",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDSBundleResponseRecherche"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CDS Bundle Response Recherche Profile",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDS Bundle Response Recherche Profile"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-06-25T14:51:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
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
