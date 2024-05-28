Instance: cds-careteam-managing-organization
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSCareTeamManagingOrganization"
* status = #active
* description = "Organisation responsable du Cercle De Soins"
* code = #managingOrganization
* base = #CareTeam
* type = #reference
* expression = "CareTeam.managingOrganization"
* multipleOr = true
* multipleAnd = true