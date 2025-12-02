# cds-organization-example - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cds-organization-example**

## Example Organization: cds-organization-example

Profil: [CDS Organization Profile](StructureDefinition-cds-organization.md)

**active**: true

**type**: Médical

**name**: Cabinet médical CC CC

**alias**: CC CC Rennes

**address**: 12 rue du paris Rennes 35000 99100 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "cds-organization-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization"
    ]
  },
  "active" : true,
  "type" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-types",
          "valueCode" : "organizationType"
        }
      ],
      "coding" : [
        {
          "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-3307",
          "code" : "MEDICAL",
          "display" : "Médical"
        }
      ]
    }
  ],
  "name" : "Cabinet médical CC CC",
  "alias" : ["CC CC Rennes"],
  "address" : [
    {
      "line" : ["12 rue du paris"],
      "city" : "Rennes",
      "postalCode" : "35000",
      "country" : "99100"
    }
  ]
}

```
