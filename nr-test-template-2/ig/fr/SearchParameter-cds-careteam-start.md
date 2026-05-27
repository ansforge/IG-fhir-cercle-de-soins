# cds-careteam-start - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-start 

 
Recherche sur la date de création du cercle de soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start",
  "version" : "2.0.1",
  "name" : "CDSCareTeamStart",
  "status" : "active",
  "date" : "2026-05-27T15:45:18+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Recherche sur la date de création du cercle de soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "start",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.period.start",
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
