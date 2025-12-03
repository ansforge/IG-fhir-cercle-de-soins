# cds-careteam-start - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-start**

## SearchParameter: cds-careteam-start 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start | *Version*:2.0.1 |
| Active as of 2025-12-03 | *Computable Name*:CDSCareTeamStart |

 
Recherche sur la date de création du cercle de soins 

## CDSCareTeamStart

Paramètre `start`:`date`

Recherche sur la date de création du cercle de soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.period.start` |
| Multiples | * multipleAnd : Le paramètre peut se répéter pour spécifier plusieurs valeurs qui doivent toutes être vraies
* multipleOr : Le paramètre peut avoir plusieurs valeurs (séparées par des virgules) dont au moins une doit être vraie
 |
| Comparateurs | Autorisé : eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-start",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start",
  "version" : "2.0.1",
  "name" : "CDSCareTeamStart",
  "status" : "active",
  "date" : "2025-12-03T08:47:15+00:00",
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
