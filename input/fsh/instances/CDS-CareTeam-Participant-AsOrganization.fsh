Instance: CDS-CareTeam-Participant-AsOrganization
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:19.426+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_Participant_AsOrganization"
* version = "2.0"
* name = "CDS_CareTeam_Participant_AsOrganization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
* date = "2021-12-01"
* publisher = "ANS"
* description = "Paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche les identifiants (métiers et logiques) et noms de l'Organization"
* code = #participant
* base = #CareTeam
* type = #reference
* expression = "CareTeam.participant.member"
* target = #Organization
* multipleOr = false
* multipleAnd = false
* chain[0] = "id"
* chain[+] = "name"
* chain[+] = "identifier"
* chain[+] = "partof.name"