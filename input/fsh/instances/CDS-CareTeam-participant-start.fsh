Instance: CDS-CareTeam-participant-start
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:09:56.863+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_participant-start"
* version = "1.0"
* name = "CDS_CareTeam_participant-start"
* status = #active
* date = "2021-10-21T09:09:56.0602966+00:00"
* publisher = "ANS"
* description = "Date d’entrée d’un membre du cercle de soins"
* code = #participant-start
* base = #CareTeam
* type = #date
* expression = "CareTeam.participant.period.start"
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