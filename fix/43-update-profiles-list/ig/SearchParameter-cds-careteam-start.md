# cds-careteam-start - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-start**

## SearchParameter: cds-careteam-start 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start | *Version*:2.0.0 |
| Active as of 2025-11-14 | *Computable Name*:CDSCareTeamStart |

 
Recherche sur la date de création du cercle de soins 

## CDSCareTeamStart

Paramètre `start`:`date`

Recherche sur la date de création du cercle de soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.period.start` |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparateurs | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start",
  "version" : "2.0.0",
  "name" : "CDSCareTeamStart",
  "status" : "active",
  "date" : "2025-11-14T17:32:42+00:00",
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
  "description" : "Recherche sur la date de création du cercle de soins",
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
  "code" : "start",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.period.start",
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
