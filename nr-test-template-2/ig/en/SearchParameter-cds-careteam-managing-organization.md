# cds-careteam-managing-organization - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-managing-organization 

 
Organisation responsable du Cercle De Soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-managing-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
  "version" : "2.0.1",
  "name" : "CDSCareTeamManagingOrganization",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-05-28T12:25:51+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Organisation responsable du Cercle De Soins",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "managingOrganization",
  "base" : ["CareTeam"],
  "type" : "reference",
  "expression" : "CareTeam.managingOrganization",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
