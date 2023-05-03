Instance: CDS-CareTeam-participant-end
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:09:47.034+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_participant-end"
* version = "1.0"
* name = "CDS_CareTeam_participant-end"
* status = #active
* date = "2021-10-21T09:09:46.6295289+00:00"
* publisher = "ANS"
* description = "Date de sortie d’un membre du cercle de soins"
* code = #participant-end
* base = #CareTeam
* type = #date
* expression = "CareTeam.participant.period.end"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #lt
* comparator[+] = #ge
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap