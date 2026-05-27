# cds-careteam-participant-start - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-participant-start 

 
Date d’entrée d’un membre du cercle de soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-participant-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
  "version" : "2.0.1",
  "name" : "CDSCareTeamParticipantStart",
  "status" : "active",
  "date" : "2026-05-27T16:13:17+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Date d’entrée d’un membre du cercle de soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "participant-start",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.participant.period.start",
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
