Instance: cds-practitionerrole-nameex
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSPractitionerRoleNameex"
* status = #active
* description = "Nom du membre du cercle de soins, le membre étant un professionnel dans un exercice professionnel ou dans une situation d’exercice"
* code = #nameex
* base = #PractitionerRole
* type = #string
* expression = "extension('https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-name').value as String"
* multipleOr = false
* multipleAnd = false