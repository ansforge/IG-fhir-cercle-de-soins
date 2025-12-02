#  - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-end 

 
Recherche sur la date de fin du cercle de soins 

## CDSCareTeamEnd

Paramètre `end`:`date`

Recherche sur la date de fin du cercle de soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.period.end` |
| Multiples | * multipleAnd : Le paramètre peut se répéter pour spécifier plusieurs valeurs qui doivent toutes être vraies
* multipleOr : Le paramètre peut avoir plusieurs valeurs (séparées par des virgules) dont au moins une doit être vraie
 |
| Comparateurs | Autorisé : eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-end",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end",
  "version" : "2.0.1",
  "name" : "CDSCareTeamEnd",
  "status" : "active",
  "date" : "2025-12-02T13:32:51+00:00",
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
