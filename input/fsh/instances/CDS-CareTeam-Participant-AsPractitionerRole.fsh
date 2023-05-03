Instance: CDS-CareTeam-Participant-AsPractitionerRole
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:54.648+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_Participant_AsPractitionerRole"
* version = "2.0"
* name = "CDS_CareTeam_Participant_AsPractitionerRole"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
* experimental = false
* date = "2021-12-01"
* publisher = "ANS"
* description = "Paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche les identifiants, noms et rôles du PractitionerRole"
* code = #participant
* base = #CareTeam
* type = #reference
* expression = "CareTeam.participant.member"
* target = #PractitionerRole
* multipleOr = false
* multipleAnd = false
* chain[0] = "id"
* chain[+] = "practitioner.identifier"
* chain[+] = "partof.nameex"
* chain[+] = "role"