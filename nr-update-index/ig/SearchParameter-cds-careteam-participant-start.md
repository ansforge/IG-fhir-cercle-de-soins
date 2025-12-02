# cds-careteam-participant-start - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-participant-start**

## SearchParameter: cds-careteam-participant-start 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start | *Version*:2.0.1 |
| Active as of 2025-12-02 | *Computable Name*:CDSCareTeamParticipantStart |

 
Date d’entrée d’un membre du cercle de soins 

## CDSCareTeamParticipantStart

Paramètre `participant-start`:`date`

Date d’entrée d’un membre du cercle de soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.participant.period.start` |
| Multiples | * multipleAnd : Le paramètre peut se répéter pour spécifier plusieurs valeurs qui doivent toutes être vraies
* multipleOr : Le paramètre peut avoir plusieurs valeurs (séparées par des virgules) dont au moins une doit être vraie
 |
| Comparateurs | Autorisé : eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-participant-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start",
  "version" : "2.0.1",
  "name" : "CDSCareTeamParticipantStart",
  "status" : "active",
  "date" : "2025-12-02T16:00:51+00:00",
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
