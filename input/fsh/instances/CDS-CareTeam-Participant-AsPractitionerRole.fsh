Instance: cds-careteam-participant-aspractitionerrole
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamParticipantAsPractitionerRole"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
* experimental = false
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