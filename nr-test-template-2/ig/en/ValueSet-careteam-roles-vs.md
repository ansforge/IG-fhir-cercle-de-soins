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
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "Roles des participants dans un cercle de soins",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-05-28T07:53:58+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Roles des participants dans un cercle de soins.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R259-HL7ParticipationFunction/FHIR/TRE-R259-HL7ParticipationFunction",
      "version" : "20231215120000",
      "concept" : [{
        "code" : "PCP",
        "display" : "Médecin traitant",
        "designation" : [{
          "language" : "en"
        }]
      }]
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
      "version" : "20240426120000"
    }]
  }
}

```
