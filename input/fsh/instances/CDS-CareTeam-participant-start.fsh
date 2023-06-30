Instance: cds-careteam-participant-start
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamParticipantStart"
* status = #active
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