# cds-patient-birthplace - Cercle De Soins v2.0.1

## SearchParameter: cds-patient-birthplace 

 
Lieu de naissance du patient 

-------

**English**

-------

## CDSPatientBirthplace

Parameter `birthplace`:`string`

Lieu de naissance du patient

| | |
| :--- | :--- |
| Resource | [Patient](http://hl7.org/fhir/R4/patient.html) |
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
  "version" : "2.0.1",
  "name" : "CDSPatientBirthplace",
  "status" : "active",
  "date" : "2025-12-03T08:35:21+00:00",
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
