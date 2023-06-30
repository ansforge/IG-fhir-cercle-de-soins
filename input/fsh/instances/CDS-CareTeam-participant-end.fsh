Instance: cds-careteam-participant-end
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamParticipantEnd"
* status = #active
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