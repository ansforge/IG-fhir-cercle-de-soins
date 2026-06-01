# CDS Fr RelatedPerson Profile - Cercle De Soins v2.0.1

## Profil de ressource: CDS Fr RelatedPerson Profile 

 
Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…). 

**Utilisations:**

* Utilise ce/t/te Profil: [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md), [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) and [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md)
* Référence ce Profil: [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md)
* Exemples pour ce/t/te Profil: [RelatedPerson/cds-relatedperson-example](RelatedPerson-cds-relatedperson-example.md)
* CapabilityStatements utilisant ce Profil: [CI-SIS Gestion du Cercle de Soins - CreateurRestful](CapabilityStatement-CDSCreateurRestful.md) and [CI-SIS Gestion du Cercle de Soins - Gestionnaire](CapabilityStatement-CDSGestionnaire.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-fr-related-person)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

** Résumé **

Obligatoire : 5 éléments
 Must-Support : 4 éléments

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

** Résumé **

Obligatoire : 5 éléments
 Must-Support : 4 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-fr-related-person.csv), [Excel](../StructureDefinition-cds-fr-related-person.xlsx), [Schematron](../StructureDefinition-cds-fr-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-fr-related-person",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
  "version" : "2.0.1",
  "name" : "CDSFrRelatedPerson",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDSFrRelatedPerson"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CDS Fr RelatedPerson Profile",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CDS Fr RelatedPerson Profile"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-06-01T14:14:51+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship:Role",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "Role",
      "short" : "Rôle de la personne",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Rôle de la personne"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "RelatedPerson.relationship:RelationType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "RelationType",
      "short" : "Relation de la personne",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relation de la personne"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
