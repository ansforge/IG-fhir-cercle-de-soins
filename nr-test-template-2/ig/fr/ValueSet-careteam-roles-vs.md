# Roles des participants dans un cercle de soins - Cercle De Soins v2.0.1

## ValueSet: Roles des participants dans un cercle de soins 

 
Roles des participants dans un cercle de soins. 

 **References** 

* [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

### Définition logique (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut ce(s) code(s) tel quil(s) est (sont) défini(s) dans [`https://mos.esante.gouv.fr/NOS/TRE_R259-HL7ParticipationFunction/FHIR/TRE-R259-HL7ParticipationFunction`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R259-HL7ParticipationFunction.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass`](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R260-HL7RoleClass.html)version 📦20240426120000

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem TRE_R259_HL7ParticipationFunction v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R259-HL7ParticipationFunction.html)
* [codesystem TRE_R260_HL7RoleClass v20240426120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.4.0/CodeSystem-TRE-R260-HL7RoleClass.html)

Ce jeu de valeur (ValueSet) contient 11 concepts

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2025-12-02T14:04:07+00:00",
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
