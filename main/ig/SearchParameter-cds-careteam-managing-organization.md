# cds-careteam-managing-organization - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-managing-organization**

## SearchParameter: cds-careteam-managing-organization 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization | *Version*:2.0.1 |
| Active as of 2025-12-02 | *Computable Name*:CDSCareTeamManagingOrganization |

 
Organisation responsable du Cercle De Soins 

## CDSCareTeamManagingOrganization

Paramètre `managingOrganization`:`reference`

Organisation responsable du Cercle De Soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.managingOrganization` |
| Multiples | * multipleAnd : Le paramètre peut se répéter pour spécifier plusieurs valeurs qui doivent toutes être vraies
* multipleOr : Le paramètre peut avoir plusieurs valeurs (séparées par des virgules) dont au moins une doit être vraie
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-managing-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
  "version" : "2.0.1",
  "name" : "CDSCareTeamManagingOrganization",
  "status" : "active",
  "date" : "2025-12-02T13:49:48+00:00",
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
  "description" : "Organisation responsable du Cercle De Soins",
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
  "code" : "managingOrganization",
  "base" : ["CareTeam"],
  "type" : "reference",
  "expression" : "CareTeam.managingOrganization",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
