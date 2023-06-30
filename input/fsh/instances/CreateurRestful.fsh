Instance: CDSCreateurRestful
InstanceOf: CapabilityStatement
Usage: #definition
* name = "createur-restful-cds"
* title = "CI-SIS Gestion du Cercle de Soins - CreateurRestful"
* status = #active
* experimental = false
* description = "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne "
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* implementationGuide = Canonical(ans.fhir.fr.cds)
* rest.mode = #client
* rest.documentation = "Envoie une requete pour créer ou mettre à jour un cercle de soins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

* rest.resource[0].type = #Patient
* rest.resource[=].profile = $FrPatient
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = $FrPractitioner
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = $practitionerRole-organizationalRole-rass
* rest.resource[=].supportedProfile = $practitionerRole-professionalRole-rass
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(cds-fr-related-person)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Organization
* rest.resource[=].profile = $FrOrganization
* rest.resource[=].supportedProfile = Canonical(cds-organization-orga-int)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #CareTeam
* rest.resource[=].profile = Canonical(cds-ihe-careteam)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update