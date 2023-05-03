Instance: CreateurRestful
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CdS.CreateurRestful"
* version = "2.1"
* name = "CreateurRestful"
* title = "CI-SIS Gestion-Cercle-de-soins - CreateurRestful"
* status = #active
* experimental = false
* date = "2022-12-27T17:19:40+01:00"
* publisher = "ANS"
* description = "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne "
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.GestionCercleDeSoins"
* rest.mode = #client
* rest.documentation = "Envoie une requete pour créer ou mettre à jour un cercle de soins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource[0].type = #Patient
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPatient"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-organizationalRole-rass"
* rest.resource[=].supportedProfile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-professionalRole-rass"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_FrRelatedPerson"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrOrganization"
* rest.resource[=].supportedProfile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_Organization-OrgaInt"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[+].type = #CareTeam
* rest.resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_IHECareTeam"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update