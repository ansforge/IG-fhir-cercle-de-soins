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

// ************************************
// * Recherche sur le profil CareTeam *
// ************************************
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
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant du cercle de soins"

* rest.resource[=].searchParam[+].name = "start"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date de création du cercle de soins (Paramètre créé dans le cadre de ce guide)."

* rest.resource[=].searchParam[+].name = "end"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-end)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date de fin du cercle de soins (Paramètre créé dans le cadre de ce guide)."

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon le du cercle de soins"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date de mise à jour du cercle de soins"

* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon la catégorie de cercle de soins."

* rest.resource[=].searchParam[+].name = "participant-start"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-participant-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date d'entrée d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide)."

* rest.resource[=].searchParam[+].name = "participant-end"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-participant-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date de sortie d'un membre du cercle de soins (Paramètre créé dans le cadre de ce guide)."

* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la période couverte par le cercle de soins."

* rest.resource[=].searchParam[+].name = "participant"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche selon les participants impliqués dans le cercle de soins."

* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche selon le patient impliqué dans le cercle de soins."

* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CareTeam-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche selon le sujet impliqué dans le cercle de soins."


* rest.resource[=].searchParam[+].name = "managingOrganization"
* rest.resource[=].searchParam[=].definition = Canonical(cds-careteam-managing-organization)
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'organisation responsable du cercle de soins (Paramètre créé dans le cadre de ce guide)."

// ***********************************
// * Recherche sur le profil Patient *
// ***********************************
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(CDSFrPatient)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant du patient"

* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon le nom de famille du patient"

* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon le prénom du patient"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon le nom du patient"

* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'adresse du patient"

* rest.resource[=].searchParam[+].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche selon la date de naissance du patient"

* rest.resource[=].searchParam[+].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon le genre du patient"

* rest.resource[=].searchParam[+].name = "birthplace"
* rest.resource[=].searchParam[=].definition = Canonical(cds-patient-birthplace)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon le lieu de naissance du patient"

// *****************************************
// * Recherche sur le profil RelatedPerson *
// *****************************************
* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = Canonical(cds-fr-related-person)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant technique de la personne de confiance"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche selon le nom de la personne de confiance"

* rest.resource[=].searchParam[+].name = "relationship"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon la relation entre le patient et la personne de confiance"

// ****************************************
// * Recherche sur le profil Practitioner *
// ****************************************
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(as-practitioner)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant du practicien"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon le nom du practicien"

// *******************************************
// * Recherche sur le profil PratitionerRole *
// *******************************************
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


// ****************************************
// * Recherche sur le profil Organization *
// ****************************************
* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical(as-organization)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant technique de l'organisation"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon l'identifiant de l'organisation"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Recherche selon le nom de l'organisation"
// Transaction mode
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-creation)
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = Canonical(cds-bundle-transaction-maj)