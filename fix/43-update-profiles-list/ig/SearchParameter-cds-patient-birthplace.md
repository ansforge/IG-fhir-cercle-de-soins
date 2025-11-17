# cds-patient-birthplace - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-patient-birthplace**

## SearchParameter: cds-patient-birthplace 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace | *Version*:2.0.0 |
| Active as of 2025-11-17 | *Computable Name*:CDSPatientBirthplace |

 
Lieu de naissance du patient 

## CDSPatientBirthplace

Paramètre `birthplace`:`string`

Lieu de naissance du patient

| | |
| :--- | :--- |
| Ressource | [Patient](http://hl7.org/fhir/R4/patient.html) |
| Expression | `extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address` |
| Multiples | * multipleAnd: The parameter may only appear once
* multipleOr: The parameter may only have one value (no comma separators)
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-patient-birthplace",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace",
  "version" : "2.0.0",
  "name" : "CDSPatientBirthplace",
  "status" : "active",
  "date" : "2025-11-17T09:19:28+00:00",
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
  "description" : "Lieu de naissance du patient",
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
  "code" : "birthplace",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address",
  "multipleOr" : false,
  "multipleAnd" : false
}

```
