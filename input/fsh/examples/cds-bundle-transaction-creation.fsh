Instance: cds-bundle-transaction-creation
InstanceOf: CDSBundleTransactionCreation
Usage: #example


* entry[careTeam].resource = cds-careteam-example
* entry[careTeam].request.method = #POST
* entry[careTeam].request.url = "CareTeam"

* entry[organization].resource = cds-organization-example
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

* entry[patient].resource = cds-patient-example
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

* entry[relatedPerson].resource = cds-relatedperson-example
* entry[relatedPerson].request.method = #POST
* entry[relatedPerson].request.url = "RelatedPerson"