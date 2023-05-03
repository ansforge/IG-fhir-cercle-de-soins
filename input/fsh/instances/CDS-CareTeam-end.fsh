Instance: CDS-CareTeam-end
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:09:35.285+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_end"
* version = "1.0"
* name = "CDS_CareTeam_end"
* status = #active
* date = "2021-10-21T09:09:34.6222581+00:00"
* publisher = "ANS"
* description = "Date de fin du cercle de soins"
* code = #end
* base = #CareTeam
* type = #date
* expression = "CareTeam.period.end"
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