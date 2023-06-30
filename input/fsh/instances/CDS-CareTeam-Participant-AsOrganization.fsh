Instance: cds-careteam-participant-asorganization
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamParticipantAsOrganization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
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