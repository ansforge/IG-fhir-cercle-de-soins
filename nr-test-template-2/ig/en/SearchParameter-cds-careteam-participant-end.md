# cds-careteam-participant-end - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-participant-end 

 
Date de sortie d’un membre du cercle de soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-participant-end",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-end",
  "version" : "2.0.1",
  "name" : "CDSCareTeamParticipantEnd",
  "status" : "active",
  "date" : "2026-05-27T16:11:26+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Date de sortie d’un membre du cercle de soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "participant-end",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.participant.period.end",
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
