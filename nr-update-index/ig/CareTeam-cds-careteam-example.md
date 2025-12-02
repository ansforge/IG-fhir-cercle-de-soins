# cds-careteam-example - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-careteam-example**

## Example CareTeam: cds-careteam-example

Dernière mise à jour : 2023-09-27 13:48:19+0100

Profil: [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)

**identifier**: `http://fake-identifier.fr`/1

**status**: Active

**name**: Cercle de soins de Mr Jacques Thobois

**subject**: [Jacques Thobois (official) Male, Date de Naissance :1984-10-02 ( NIR définitif (use: official, ))](Patient-cds-patient-example.md)

**period**: 2013-01-12 --> (en cours)

> **participant****member**:[RelatedPerson CHIBOUT Lamine (official)](RelatedPerson-cds-relatedperson-example.md)**period**: 2013-01-12 --> (en cours)

> **participant****member**:[Organization Cabinet médical CC CC](Organization-cds-organization-example.md)**period**: 2013-01-12 --> 2032-12-18 13:48:19+0100

**managingOrganization**: [Organization Cabinet médical CC CC](Organization-cds-organization-example.md)



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "cds-careteam-example",
  "meta" : {
    "lastUpdated" : "2023-09-27T13:48:19.342+01:00",
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam"
    ]
  },
  "identifier" : [
    {
      "system" : "http://fake-identifier.fr",
      "value" : "1"
    }
  ],
  "status" : "active",
  "name" : "Cercle de soins de Mr Jacques Thobois",
  "subject" : {
    "reference" : "Patient/cds-patient-example"
  },
  "period" : {
    "start" : "2013-01-12"
  },
  "participant" : [
    {
      "member" : {
        "reference" : "RelatedPerson/cds-relatedperson-example"
      },
      "period" : {
        "start" : "2013-01-12"
      }
    },
    {
      "member" : {
        "reference" : "Organization/cds-organization-example"
      },
      "period" : {
        "start" : "2013-01-12",
        "end" : "2032-12-18T13:48:19.342+01:00"
      }
    }
  ],
  "managingOrganization" : [
    {
      "reference" : "Organization/cds-organization-example"
    }
  ]
}

```
