CodeSystem: CareTeamRolesCodeSystem
Id: careteam-roles-cs
Title: "Roles des participants dans un cercle de soins"
Description: "Roles des participants dans un cercle de soins."
* #MT "Médecin Traitant" "Médecin Traitant"
* #AID "Aidant" "Aidant"
* #PC "Personne de Confiance" "Personne de Confiance"
* #RL "Responsable légal" "Responsable légal"


ValueSet: CareTeamRolesValueSet
Id: careteam-roles-vs
Title: "Roles des participants dans un cercle de soins"
Description: "Roles des participants dans un cercle de soins."
* include codes from system CareTeamRolesCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/participant-role
