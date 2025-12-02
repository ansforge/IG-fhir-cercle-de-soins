#  - Cercle De Soins v2.0.1

## Profil des ressources: CDS Organization Profile 

 
Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI) 

**Utilisations:**

* Utiliser ce Profil: [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md), [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) and [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md)
* Référer à ce Profil: [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md) and [CDS Organization Profile](StructureDefinition-cds-organization.md)
* Exemples pour ce Profil: [Cabinet médical CC CC](Organization-cds-organization-example.md)
* CapabilityStatements utilisant ce Profil: [CI-SIS Gestion du Cercle de Soins - Consommateur](CapabilityStatement-CDSConsommateur.md), [CI-SIS Gestion du Cercle de Soins - CreateurRestful](CapabilityStatement-CDSCreateurRestful.md) and [CI-SIS Gestion du Cercle de Soins - Gestionnaire](CapabilityStatement-CDSGestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-organization)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel](#tabs-diff) 
*  [Tableau récapitulatif](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

**Résumé**

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization Profile(https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html)
* [AS Organization Profile(https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html)
* [CDS Organization Profile(https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1)](StructureDefinition-cds-organization.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

**Résumé**

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Organization Profile(https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.1.0)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html)
* [AS Organization Profile(https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0)](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html)
* [CDS Organization Profile(https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1)](StructureDefinition-cds-organization.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-organization.csv), [Excel](../StructureDefinition-cds-organization.xlsx), [Schematron](../StructureDefinition-cds-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization",
  "version" : "2.0.1",
  "name" : "CDSAsOrganization",
  "title" : "CDS Organization Profile",
  "status" : "active",
  "date" : "2025-12-02T13:33:21+00:00",
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
  "description" : "Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI)",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "as-organization-to-mos-ej",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EJ"
    },
    {
      "identity" : "as-organization-to-mos-eg",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsOrganization to MOS - EG"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization.identifier:identifierOI",
        "path" : "Organization.identifier",
        "sliceName" : "identifierOI",
        "short" : "identifiantOI (OI) : Identifiant de l'organisation interne. Le system https://oi.esante.gouv.fr est à utiliser s'il s'agit de l'OI unique et persistant défini au niveau national.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Organization.identifier:identifierOI.type",
        "path" : "Organization.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre",
              "code" : "42"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Organization.identifier:identifierOI.system",
        "path" : "Organization.identifier.system",
        "example" : [
          {
            "label" : "General",
            "valueString" : "https://oi.esante.gouv.fr"
          }
        ]
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "short" : "Référence vers la structure de rattachement (lien OI/EG ou lien EG/EJ)",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.1.0",
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0",
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1"
            ]
          }
        ]
      }
    ]
  }
}

```
