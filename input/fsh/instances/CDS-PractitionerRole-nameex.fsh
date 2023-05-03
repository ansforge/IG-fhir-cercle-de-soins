Instance: CDS-PractitionerRole-nameex
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:44.978+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_PractitionerRole_nameex"
* version = "1.0"
* name = "CDS_PractitionerRole_nameex"
* status = #active
* date = "2021-10-21T09:10:44.573515+00:00"
* publisher = "ANS"
* description = "Nom du membre du cercle de soins, le membre étant un professionnel dans un exercice professionnel ou dans une situation d’exercice"
* code = #nameex
* base = #PractitionerRole
* type = #string
* expression = "extension('https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/practitionerRole-name').value as String"
* multipleOr = false
* multipleAnd = false