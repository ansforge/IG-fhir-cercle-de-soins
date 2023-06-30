Instance: cds-careteam-participant-asrelatedperson
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamParticipantAsRelatedPerson"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
* description = "Paramètre de recherche chaîné créé pour le volet CdS de manière à pouvoir utiliser comme critère de recherche les identifiants, noms et rôles du RelatedPerson"
* code = #participant
* base = #CareTeam
* type = #reference
* expression = "CareTeam.participant.member"
* target = #RelatedPerson
* multipleOr = false
* multipleAnd = false
* chain[0] = "id"
* chain[+] = "name"
* chain[+] = "relationship"