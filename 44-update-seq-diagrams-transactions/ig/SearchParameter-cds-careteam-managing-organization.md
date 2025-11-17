# cds-careteam-managing-organization - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-managing-organization**

## SearchParameter: cds-careteam-managing-organization 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization | *Version*:2.0.0 |
| Active as of 2025-11-17 | *Computable Name*:CDSCareTeamManagingOrganization |

 
Organisation responsable du Cercle De Soins 

## CDSCareTeamManagingOrganization

Paramètre `managingOrganization`:`reference`

Organisation responsable du Cercle De Soins

| | |
| :--- | :--- |
| Ressource | [CareTeam](http://hl7.org/fhir/R4/careteam.html) |
| Expression | `CareTeam.managingOrganization` |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-managing-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
  "version" : "2.0.0",
  "name" : "CDSCareTeamManagingOrganization",
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
