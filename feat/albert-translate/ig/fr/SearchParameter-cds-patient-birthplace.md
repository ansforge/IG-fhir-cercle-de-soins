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
  "status" : "active",
  "date" : "2026-06-02T16:40:13+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Lieu de naissance du patient",
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
  "code" : "birthplace",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address",
  "multipleOr" : false,
  "multipleAnd" : false
}

```
