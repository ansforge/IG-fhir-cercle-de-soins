# cds-relatedperson-example - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-relatedperson-example**

## Example RelatedPerson: cds-relatedperson-example

Profil: [CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md)

**identifier**: `https://fake-system`/id-relatedPerson-12 (utilisation : temp, )

**active**: true

**patient**: [Jacques Thobois (official) Male, Date de Naissance :1984-10-02 ( NIR définitif (use: official, ))](Patient-cds-patient-example.md)

**relationship**: Entité à contacter en cas d'urgence, Voisin(e)

**name**: CHIBOUT Lamine (Official)

**telecom**: ph: 0602143212

**gender**: Male

**address**: 12 Rue de la Paix Paris 75004 FRA 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "cds-relatedperson-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person"
    ]
  },
  "identifier" : [
    {
      "use" : "temp",
      "system" : "https://fake-system",
      "value" : "id-relatedPerson-12"
    }
  ],
  "active" : true,
  "patient" : {
    "reference" : "Patient/cds-patient-example"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
          "code" : "ECON",
          "display" : "Entité à contacter en cas d'urgence"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode",
          "code" : "NBOR",
          "display" : "Voisin(e)"
        }
      ]
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Lamine",
      "given" : ["CHIBOUT"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0602143212"
    }
  ],
  "gender" : "male",
  "address" : [
    {
      "line" : ["12 Rue de la Paix"],
      "city" : "Paris",
      "postalCode" : "75004",
      "country" : "FRA"
    }
  ]
}

```
