# cds-patient-example - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-patient-example**

## Example Patient: cds-patient-example

Dernière mise à jour : 2023-09-27 13:48:19+0100

Profil: [FR Core Patient INS Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient-ins.html)

Jacques Thobois (official) Male, Date de Naissance :1984-10-02 ( NIR définitif (use: official, ))

-------

| | |
| :--- | :--- |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | GOULVEN |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445: VALI](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI) (Identité validée)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "cds-patient-example",
  "meta" : {
    "lastUpdated" : "2023-09-27T13:48:19.342+01:00",
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "identityStatus",
          "valueCoding" : {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
            "code" : "VALI"
          }
        }
      ],
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress" : {
        "extension" : [
          {
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
              "code" : "29064"
            }
          }
        ],
        "city" : "GOULVEN"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INS-NIR"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.213.1.4.8",
      "value" : "123456789012244"
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
          "valueString" : "Jacques"
        }
      ],
      "use" : "official",
      "family" : "Thobois",
      "given" : ["Jacques"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1984-10-02"
}

```
