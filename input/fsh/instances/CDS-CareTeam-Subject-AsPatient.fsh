Instance: CDS-CareTeam-Subject-AsPatient
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:35.114+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_Subject_AsPatient"
* version = "2.0"
* name = "CDS_CareTeam_Subject_AsPatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-subject"
* status = #active
* date = "2021-12-01"
* publisher = "ANS"
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