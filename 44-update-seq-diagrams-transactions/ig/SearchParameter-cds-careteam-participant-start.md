# cds-careteam-participant-start - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-participant-start**

## SearchParameter: cds-careteam-participant-start 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start | *Version*:2.0.0 |
| Active as of 2025-11-17 | *Computable Name*:CDSCareTeamParticipantStart |

 
Date d’entrée d’un membre du cercle de soins 

## CDSCareTeamParticipantStart

Paramètre `participant-start`:`date`

Date d’entrée d’un membre du cercle de soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.participant.period.start` |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparateurs | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-participant-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
  "version" : "2.0.0",
  "name" : "CDSCareTeamParticipantStart",
  "status" : "active",
  "date" : "2025-11-17T08:13:38+00:00",
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
  "description" : "Date d’entrée d’un membre du cercle de soins",
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
  "code" : "participant-start",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.participant.period.start",
  "multipleOr" : true,
  "multipleAnd" : true,
  "comparator" : [
    "eq",
    "ne",
    "gt",
    "lt",
    "ge",
    "le",
    "sa",
    "eb",
    "ap"
  ]
}

```
