Instance: CreateurTransaction
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CdS_CreateurTransaction"
* version = "2.1"
* name = "CreateurTransaction"
* title = "CI-SIS Gestion-Cercle-de-soins - CreateurTransaction"
* status = #active
* experimental = false
* date = "2022-12-27T17:19:40+01:00"
* publisher = "ANS"
* description = "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.GestionCercleDeSoins"
* rest.mode = #client
* rest.documentation = "Envoie une requete pour créer ou mettre à jour un cercle de soins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_BundleTransactionCreation"
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_BundleTransactionMAJ"