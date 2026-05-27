# cds-patient-birthplace - Cercle De Soins v2.0.1

## SearchParameter: cds-patient-birthplace 

 
Lieu de naissance du patient 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "cds-patient-birthplace",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace",
  "version" : "2.0.1",
  "name" : "CDSPatientBirthplace",
  "status" : "active",
  "date" : "2026-05-27T15:46:35+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Lieu de naissance du patient",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "birthplace",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address",
  "multipleOr" : false,
  "multipleAnd" : false
}

```
