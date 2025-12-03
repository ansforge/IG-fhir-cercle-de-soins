# cds-careteam-end - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-end 

 
Recherche sur la date de fin du cercle de soins 

-------

**English**

-------

## CDSCareTeamEnd

Parameter `end`:`date`

Recherche sur la date de fin du cercle de soins

| | |
| :--- | :--- |
| Resource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.period.end` |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-end",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end",
  "version" : "2.0.1",
  "name" : "CDSCareTeamEnd",
  "status" : "active",
  "date" : "2025-12-03T08:35:21+00:00",
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
  "description" : "Recherche sur la date de fin du cercle de soins",
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
  "code" : "end",
  "base" : ["CareTeam"],
  "type" : "date",
  "expression" : "CareTeam.period.end",
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
