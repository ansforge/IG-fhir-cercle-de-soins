Instance: cds-careteam-start
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamStart"
* status = #active
* description = "Recherche sur la date de création du cercle de soins"
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