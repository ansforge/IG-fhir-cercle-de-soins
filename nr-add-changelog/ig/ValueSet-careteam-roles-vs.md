# Roles des participants dans un cercle de soins - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Roles des participants dans un cercle de soins**

## ValueSet: Roles des participants dans un cercle de soins 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/ValueSet/careteam-roles-vs | *Version*:2.0.1 |
| Active as of 2025-11-18 | *Computable Name*:CareTeamRolesValueSet |

 
Roles des participants dans un cercle de soins. 

 **References** 

* [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

### Logical Definition (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R259-HL7ParticipationFunction/FHIR/TRE-R259-HL7ParticipationFunction`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R259-HL7ParticipationFunction.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R260-HL7RoleClass.html)version 📦20240426120000

 

### Expansion

Ce jeu de valeur (ValueSet) contient 11 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2025-11-18T17:11:50+00:00",
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
