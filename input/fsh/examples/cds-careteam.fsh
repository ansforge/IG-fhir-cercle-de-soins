Instance: cds-careteam-example
InstanceOf: CDSCareTeam
Usage: #example
* meta.lastUpdated = "2023-09-27T13:48:19.342+01:00"
* status = #active
* name = "Cercle de soins de Mr Jacques Thobois"
* identifier.system = "http://fake-identifier.fr"
* identifier.value = "1"
* subject = Reference(cds-patient-example)
* period.start = "2013-01-12"

* participant[+].member = Reference(cds-relatedperson-example)
* participant[=].period.start = "2013-01-12"

* participant[+].member = Reference(cds-organization-example)
* participant[=].period.start = "2013-01-12"
* participant[=].period.end = "2032-12-18T13:48:19.342+01:00"

* managingOrganization = Reference(cds-organization-example)