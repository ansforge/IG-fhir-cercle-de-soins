Instance: CDSGestionnaire
InstanceOf: CapabilityStatement
Usage: #definition
* name = "gestionnaire-cds"
* title = "CI-SIS Gestion du Cercle de Soins - Gestionnaire"
* status = #active
* date = "2023-07-14"
* experimental = false
* description = "Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins,\ndonne accès aux informations en cas de consultation."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* implementationGuide = Canonical(ans.fhir.fr.cds)
* rest.mode = #server
* rest.documentation = "Création et mise à jour des cercles de soins"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

// Restful mode
// CareTeam Resource
* rest.resource[0].type = #CareTeam
* rest.resource[=].profile = Canonical(cds-ihe-careteam)
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "identifiant du cercle de soins"
* rest.resource[=].searchParam[+].name = "CDSCareTeamStart"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "date de création du cercle de soins"
* rest.resource[=].searchParam[+].name = "CDS_CareTeam_end"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-end)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "date de fin du cercle de soins"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "statut du cercle de soins"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "date de mise à jour du cercle de soins"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Représente la catégorie cercle de soins."
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Représente la période couverte par le cercle de soins."
* rest.resource[=].searchParam[+].name = "participant"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Représente les participants impliqués dans le cercle de soins."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Représente le patient du cercle de soins."
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Représente le sujet du cercle de soins."
* rest.resource[=].searchParam[+].name = "CDS_CareTeam_participant-start"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-participant-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date d'entrée d'un membre du cercle de soins"
* rest.resource[=].searchParam[+].name = "CDS_CareTeam_participant-end"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-participant-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de sortie d'un membre du cercle de soins"
* rest.resource[=].searchParam[+].name = "CareTeamManagingOrganization"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-managing-organization)
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Représente le paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche l'organisation responsable du cercle de soins."
// Patient resource
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(CDSFrPatient)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du patient"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de famille du patient"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Prénom du patient"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom du patient"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Adresse du patient"
* rest.resource[=].searchParam[+].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de naissance du patient"
* rest.resource[=].searchParam[+].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Genre du patient"
* rest.resource[=].searchParam[+].name = "birthplace"
* rest.resource[=].searchParam[=].definition = Canonical(cds-patient-birthplace)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Genre du patient"
// RelatedPerson resource
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(cds-fr-related-person)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant technique de la personne de confiance"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de la personne de confiance"
* rest.resource[=].searchParam[+].name = "relationship"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Relation entre le patient et la personne de confiance"
// Practitioner resource
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(as-practitioner)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
// PractitionerRole resource
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(as-practitionerrole)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant technique du membre professionnel dans la situation d'exercice"
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Référence du professionnel"
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Rôle du membre de cercle de soins"
* rest.resource[=].searchParam[+].name = "nameex"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_PractitionerRole_nameex"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom du membre du cercle de soins"
* rest.resource[=].searchParam[+].name = "partOf"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/PDSm_PractitionerRole_partOf"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference du professionnel"
* rest.resource[=].searchParam[+].name = "relationship"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Role du membre de cercle de soins"
// Organization resource
* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical(cds-organization-interne)
* rest.resource[=].supportedProfile = Canonical(as-organization)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant technique de la personne de confiance"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de la personne de confiance"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Nom de la personne de confiance"
* rest.resource[=].searchParam[+].name = "partof"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-partof"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Référence vers l'entité juridique"

// Transaction mode
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-creation)
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-maj)