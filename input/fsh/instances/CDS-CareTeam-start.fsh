Instance: CDS-CareTeam-start
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:07.963+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_start"
* version = "1.0"
* name = "CDS_CareTeam_start"
* status = #active
* date = "2021-10-21T09:10:07.2846633+00:00"
* publisher = "ANS"
* description = "Date de création du cercle de soins"
* code = #start
* base = #CareTeam
* type = #date
* expression = "CareTeam.period.start"
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