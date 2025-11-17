# CDS CareTeam Profile - Cercle De Soins v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDS CareTeam Profile**

## Resource Profile: CDS CareTeam Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam | *Version*:2.0.0 |
| Active as of 2025-11-17 | *Computable Name*:CDSCareTeam |

 
Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ». 

**Usages:**

* Use this Profile: [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md), [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) and [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md)
* Examples for this Profile: [Cercle de soins de Mr Jacques Thobois](CareTeam-cds-careteam-example.md)
* CapabilityStatements using this Profile: [CI-SIS Gestion du Cercle de Soins - Consommateur](CapabilityStatement-CDSConsommateur.md), [CI-SIS Gestion du Cercle de Soins - CreateurRestful](CapabilityStatement-CDSCreateurRestful.md) and [CI-SIS Gestion du Cercle de Soins - Gestionnaire](CapabilityStatement-CDSGestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-ihe-careteam)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cds-ihe-careteam.csv), [Excel](StructureDefinition-cds-ihe-careteam.xlsx), [Schematron](StructureDefinition-cds-ihe-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-ihe-careteam",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam",
  "version" : "2.0.0",
  "name" : "CDSCareTeam",
  "title" : "CDS CareTeam Profile",
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
  "description" : "Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ».",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CareTeam.meta",
        "path" : "CareTeam.meta",
        "min" : 1
      },
      {
        "id" : "CareTeam.meta.lastUpdated",
        "path" : "CareTeam.meta.lastUpdated",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.identifier",
        "path" : "CareTeam.identifier",
        "short" : "Identifiant du cercle de soins",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.identifier.value",
        "path" : "CareTeam.identifier.value",
        "requirements" : "This version of the profile requires an ID identifying this profile as an IHE PCC Dynamic Care Team",
        "min" : 1
      },
      {
        "id" : "CareTeam.status",
        "path" : "CareTeam.status",
        "short" : "Statut du cercle de soins.\n valeurs autorisées : proposed | active | suspended | inactive | entered-in-error",
        "min" : 1
      },
      {
        "id" : "CareTeam.category",
        "path" : "CareTeam.category",
        "short" : "Type d’équipe. Une personne prise en charge ne peut avoir qu’un cercle de soins donc cet élément n’est pas utilisé."
      },
      {
        "id" : "CareTeam.name",
        "path" : "CareTeam.name",
        "short" : "Nom de l’équipe tel que « Cercle de soins de Mr Dupont ».",
        "min" : 1
      },
      {
        "id" : "CareTeam.subject",
        "path" : "CareTeam.subject",
        "short" : "Le sujet du cercle de soins est une personne prise en charge (« Patient »).",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.encounter",
        "path" : "CareTeam.encounter",
        "short" : "La rencontre au cours de laquelle le cercle de soins a été créé ou à laquelle la création de cet enregistrement est étroitement associée n’est pas utilisée dans ce volet.",
        "comment" : "This profile allows for CareTeam creation outside of the context of an encounter or episode."
      },
      {
        "id" : "CareTeam.period",
        "path" : "CareTeam.period",
        "short" : "Période couverte par le cercle de soins.",
        "requirements" : "Allows tracking what team(s) are in effect at a particular time. This version of the profile requires period for the CareTeam.",
        "min" : 1
      },
      {
        "id" : "CareTeam.period.start",
        "path" : "CareTeam.period.start",
        "short" : "Date de création du cercle de soins.",
        "comment" : "This version of the profile requires at least a start time for the CareTeam.",
        "min" : 1
      },
      {
        "id" : "CareTeam.period.end",
        "path" : "CareTeam.period.end",
        "short" : "Date de fin d'existence du cercle de soins."
      },
      {
        "id" : "CareTeam.participant",
        "path" : "CareTeam.participant",
        "short" : "Membres du cercle de soins.",
        "comment" : "It is possible for a care team to be set up with roles specified only, before actual participants are invited into or identified as team members"
      },
      {
        "id" : "CareTeam.participant.role",
        "path" : "CareTeam.participant.role",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/cds/ValueSet/careteam-roles-vs"
        }
      },
      {
        "id" : "CareTeam.participant.member",
        "path" : "CareTeam.participant.member",
        "short" : "Il s’agit d’une personne (Professionnel ou Personne Tierce) ou d’une Entité qui fait partie du Cercle de Soins d’un Usager",
        "requirements" : "Need to know who the member is if participant is required.\r\nThis version of the profile requires that a DynamicCareTeam be referenced when the member is a care team.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole",
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person",
              "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.participant.period",
        "path" : "CareTeam.participant.period",
        "comment" : "Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin (optionnelle) de participation à ce cercle."
      },
      {
        "id" : "CareTeam.participant.period.start",
        "path" : "CareTeam.participant.period.start",
        "short" : "Date de début de participation au cercle de soin de la personne prise en charge Un membre doit pouvoir entrer et sortir plusieurs fois du cercle de soins. Pour satisfaire cette demande, il est possible de créer plusieurs instances de l’élément participant faisant référence au même membre mais à des périodes différentes.",
        "min" : 1
      },
      {
        "id" : "CareTeam.managingOrganization",
        "path" : "CareTeam.managingOrganization",
        "short" : "L’organisation responsable du cercle de soins."
      },
      {
        "id" : "CareTeam.telecom",
        "path" : "CareTeam.telecom",
        "short" : "Point de contact central du cercle de soins (qui s’applique à tous les membres) ; élément non utilisé dans le cadre de ce volet."
      },
      {
        "id" : "CareTeam.note",
        "path" : "CareTeam.note",
        "short" : "Commentaires sur le cercle de soins."
      }
    ]
  }
}

```
