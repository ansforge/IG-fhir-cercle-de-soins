Instance: cds-careteam-end
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamEnd"
* status = #active
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