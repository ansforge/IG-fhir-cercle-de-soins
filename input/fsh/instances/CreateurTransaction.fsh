Instance: CDSCreateurTransaction
InstanceOf: CapabilityStatement
Usage: #definition
* name = "CreateurTransaction-cds"
* title = "CI-SIS Gestion du Cercle de Soins - CreateurTransaction"
* status = #active
* date = "2023-07-14"
* experimental = false
* description = "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle\nde soins d'une personne"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* implementationGuide = Canonical(ans.fhir.fr.cds)
* rest.mode = #client
* rest.documentation = "Envoie une requete pour créer ou mettre à jour un cercle de soins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-creation)
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-maj)