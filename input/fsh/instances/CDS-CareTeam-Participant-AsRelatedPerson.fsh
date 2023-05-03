Instance: CDS-CareTeam-Participant-AsRelatedPerson
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:11:05.72+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_Participant_AsRelatedPerson"
* version = "2.0"
* name = "CDS_CareTeam_Participant_AsRelatedPerson"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/CareTeam-participant"
* status = #active
* date = "2021-12-01"
* publisher = "ANS"
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