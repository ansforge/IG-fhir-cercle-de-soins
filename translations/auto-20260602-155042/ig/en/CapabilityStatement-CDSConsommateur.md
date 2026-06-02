# CI-SIS Circle of Care Management - Consumer - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Circle of Care Management - Consumer 

 
The consumer role embodied by a system can consult a care circle. Examples of consumers: an electronic patient record, a laboratory management system, a radiological information system, a practice management software, a digital service supporting coordination. 

 [Raw OpenAPI-Swagger Definition file](../CDSConsommateur.openapi.json) | [Download](../CDSConsommateur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSConsommateur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSConsommateur",
  "version" : "2.0.1",
  "name" : "consommateur-cds",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "consommateur-cds"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CI-SIS Gestion du Cercle de Soins - Consommateur",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CI-SIS Care Circle Management - Consumer"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2023-07-14",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le rôle de consommateur incarné par un système, peut consulter un cercle de soins.  Exemples  de  consommateur  :  un  dossier  patient  informatisé,  un  système  de  gestion  de  laboratoire,  un  système  d’information  radiologique,  un  logiciel  de  gestion de cabinet, un service numérique d’appui à la coordination.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "The consumer role embodied by a system can consult a care circle. Examples of consumers: an electronic patient record, a laboratory management system, a radiological information system, a practice management software, a digital service supporting coordination."
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/cds/ImplementationGuide/ans.fhir.fr.cds"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "Recherche de cercles de soins",
    "_documentation" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Care Circle Search"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)",
      "_description" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ANS provides references dedicated to security policy (PGSSI-S) and security mechanisms are defined in the Transport layer sections of the Interoperability Framework for Health Information Systems (CI-SIS)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    "resource" : [{
      "type" : "CareTeam",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "vread"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "history-instance"
      },
      {
        "code" : "history-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier|4.0.1",
        "type" : "token",
        "documentation" : "identifiant du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "care circle identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "CDSCareTeamStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start|2.0.1",
        "type" : "date",
        "documentation" : "date de création du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "care circle creation date"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "CDSCareTeamEnd",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end|2.0.1",
        "type" : "date",
        "documentation" : "date de fin du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "care circle end date"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-status|4.0.1",
        "type" : "token",
        "documentation" : "statut du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "care circle status"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "date de mise à jour du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "care circle update date"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-category|4.0.1",
        "type" : "token",
        "documentation" : "Représente la catégorie cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the care circle category."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date|4.0.1",
        "type" : "date",
        "documentation" : "Représente la période couverte par le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the period covered by the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "participant",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-participant|4.0.1",
        "type" : "reference",
        "documentation" : "Représente les participants impliqués dans le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the participants involved in the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient|4.0.1",
        "type" : "reference",
        "documentation" : "Représente le patient du cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the patient of the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-subject|4.0.1",
        "type" : "reference",
        "documentation" : "Représente le sujet du cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the subject of the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "CDSCareTeamParticipantStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start|2.0.1",
        "type" : "date",
        "documentation" : "Date d'entrée d'un membre du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Entry date of a care circle member"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "CDSCareTeamParticipantEnd",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-end|2.0.1",
        "type" : "date",
        "documentation" : "Date de sortie d'un membre du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Exit date of a care circle member"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "CareTeamManagingOrganization",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization|2.0.1",
        "type" : "reference",
        "documentation" : "Représente le paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche l'organisation responsable du cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Represents the chained search parameter created for the CdS section in order to use the organization responsible for the care circle as a search criterion."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient|2.1.0",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Nom de famille du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's last name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
        "type" : "string",
        "documentation" : "Prénom du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's first name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-address|4.0.1",
        "type" : "string",
        "documentation" : "Adresse du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's address"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "birthdate",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate|4.0.1",
        "type" : "date",
        "documentation" : "Date de naissance du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's date of birth"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "gender",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender|4.0.1",
        "type" : "token",
        "documentation" : "Genre du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's gender"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "birthplace",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace|2.0.1",
        "type" : "string",
        "documentation" : "Genre du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Patient's gender"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant technique de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Technical identifier of the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Name of the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "relationship",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship|4.0.1",
        "type" : "token",
        "documentation" : "Relation entre le patient et la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Relationship between the patient and the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organization|2.0.1",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant technique de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Technical identifier of the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name|4.0.1",
        "type" : "string",
        "documentation" : "Nom de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Name of the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Nom de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Name of the trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "partof",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-partof|4.0.1",
        "type" : "reference",
        "documentation" : "Reference vers l'entite juridique",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Reference to the legal entity"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Identifiant technique du membre professionnel dans la situation d'exercice",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Technical identifier of the professional member in the exercise situation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "practitioner",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner|4.0.1",
        "type" : "reference",
        "documentation" : "Référence du professionnel",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Professional reference"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "role",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role|4.0.1",
        "type" : "token",
        "documentation" : "Rôle du membre de cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Role of the care circle member"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    }]
  }]
}

```
