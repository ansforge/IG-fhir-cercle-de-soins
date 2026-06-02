# CI-SIS Circle of Care Management - Manager - Cercle De Soins v2.0.1

## CapabilityStatement: CI-SIS Circle of Care Management - Manager 

 
Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins,donne accès aux informations en cas de consultation. 

 [Raw OpenAPI-Swagger Definition file](../CDSGestionnaire.openapi.json) | [Download](../CDSGestionnaire.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CDSGestionnaire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/CapabilityStatement/CDSGestionnaire",
  "version" : "2.0.1",
  "name" : "gestionnaire-cds",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "care-coordinator"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "CI-SIS Gestion du Cercle de Soins - Gestionnaire",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "CI-SIS Care Circle Management - Care Coordinator"
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
  "description" : "Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins,donne accès aux informations en cas de consultation.",
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
    "mode" : "server",
    "documentation" : "Création et mise à jour des cercles de soins",
    "_documentation" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Creation and update of care circles"
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
            "valueString" : "The ANS provides references dedicated to security policy (PGSSI-S) and security mechanisms are defined in the Transport layer sections of the Interoperability Framework for Health Information Systems (CI-SIS)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    "resource" : [{
      "type" : "CareTeam",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam|2.0.1",
      "interaction" : [{
        "code" : "update"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "vread"
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
        "documentation" : "Recherche selon l'identifiant du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "start",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-start|2.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date de création du cercle de soins (Paramètre créé dans le cadre de ce guide).",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle creation date (Parameter created as part of this guide)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "end",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-end|2.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date de fin du cercle de soins (Paramètre créé dans le cadre de ce guide).",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle end date (Parameter created as part of this guide)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-status|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon le du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date de mise à jour du cercle de soins",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle update date"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-category|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon la catégorie de cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle category."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "participant-start",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start|2.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date d'entrée d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide).",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle member entry date (Parameter created as part of this guide)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "participant-end",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-participant-start|2.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date de sortie d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide).",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by care circle member exit date (Parameter created as part of this guide)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date|4.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la période couverte par le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by period covered by the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "participant",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-participant|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche selon les participants impliqués dans le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by participants involved in the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche selon le patient impliqué dans le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient involved in the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/CareTeam-subject|4.0.1",
        "type" : "reference",
        "documentation" : "Recherche selon le sujet impliqué dans le cercle de soins.",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by subject involved in the care circle."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "managingOrganization",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-careteam-managing-organization|2.0.1",
        "type" : "reference",
        "documentation" : "Recherche selon l'organisation responsable du cercle de soins (Paramètre créé dans le cadre de ce guide).",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by organization responsible for the care circle (Parameter created as part of this guide)."
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
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon l'identifiant du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le nom de famille du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient last name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le prénom du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient first name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le nom du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-address|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon l'adresse du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient address"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "birthdate",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate|4.0.1",
        "type" : "date",
        "documentation" : "Recherche selon la date de naissance du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient date of birth"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "gender",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon le genre du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient gender"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "birthplace",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/cds/SearchParameter/cds-patient-birthplace|2.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le lieu de naissance du patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by patient place of birth"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-fr-related-person|2.0.1",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon l'identifiant technique de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by trusted person technical identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le nom de la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by trusted person name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "relationship",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon la relation entre le patient et la personne de confiance",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by relationship between patient and trusted person"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon l'identifiant du practicien",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by practitioner identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le nom du practicien",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by practitioner name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
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
              "valueString" : "Professional member technical identifier in the exercise situation"
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
              "valueString" : "Care circle member role"
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
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon l'identifiant technique de l'organisation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by organization technical identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier|4.0.1",
        "type" : "token",
        "documentation" : "Recherche selon l'identifiant de l'organisation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by organization identifier"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name|4.0.1",
        "type" : "string",
        "documentation" : "Recherche selon le nom de l'organisation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by organization name"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation",
      "_documentation" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-creation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj",
      "_documentation" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-bundle-transaction-maj"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    }]
  }]
}

```
