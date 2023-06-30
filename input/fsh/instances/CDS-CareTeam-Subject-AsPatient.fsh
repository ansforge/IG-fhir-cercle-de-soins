Instance: cds-careteam-subject-as-patient
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamSubjectAsPatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-subject"
* status = #active
* description = "Paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche les identifiant, adresse, nom, genre et lieu de naissance du Patient, sujet du CdS"
* code = #patient
* base = #CareTeam
* type = #reference
* expression = "CareTeam.subject"
* target = #Patient
* multipleOr = false
* multipleAnd = false
* chain[0] = "birthplace"
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "family"
* chain[+] = "given"
* chain[+] = "gender"
* chain[+] = "birthdate"