# Roles des participants dans un cercle de soins - Cercle De Soins v2.0.1

## ValueSet: Roles des participants dans un cercle de soins 

 
Roles des participants dans un cercle de soins. 

 **References** 

* [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "careteam-roles-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/ValueSet/careteam-roles-vs",
  "version" : "2.0.1",
  "name" : "CareTeamRolesValueSet",
  "title" : "Roles des participants dans un cercle de soins",
  "status" : "active",
  "date" : "2026-01-06T09:36:59+00:00",
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
  "description" : "Roles des participants dans un cercle de soins.",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R259-HL7ParticipationFunction/FHIR/TRE-R259-HL7ParticipationFunction",
        "concept" : [
          {
            "code" : "PCP",
            "display" : "Médecin traitant"
          }
        ]
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
      }
    ]
  }
}

```
