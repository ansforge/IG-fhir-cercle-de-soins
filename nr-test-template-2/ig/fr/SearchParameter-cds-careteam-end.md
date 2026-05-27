# cds-careteam-end - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-end 

 
Recherche sur la date de fin du cercle de soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-end",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end",
  "version" : "2.0.1",
  "name" : "CDSCareTeamEnd",
  "status" : "active",
  "date" : "2026-05-27T15:59:28+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Recherche sur la date de fin du cercle de soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "end",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.period.end",
  "multipleOr" : true,
  "multipleAnd" : true,
  "comparator" : ["eq",
  "ne",
  "gt",
  "lt",
  "ge",
  "le",
  "sa",
  "eb",
  "ap"]
}

```
