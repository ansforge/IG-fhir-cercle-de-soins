# cds-careteam-managing-organization - Cercle De Soins v2.0.1

## SearchParameter: cds-careteam-managing-organization 

 
Organisation responsable du Cercle De Soins 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-careteam-managing-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization",
  "version" : "2.0.1",
  "name" : "CDSCareTeamManagingOrganization",
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
  "description" : "Organisation responsable du Cercle De Soins",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "managingOrganization",
  "base" : ["CareTeam"],
  "type" : "reference",
  "expression" : "CareTeam.managingOrganization",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
