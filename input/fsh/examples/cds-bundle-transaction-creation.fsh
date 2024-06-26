Instance: cds-bundle-transaction-creation-example
InstanceOf: CDSBundleTransactionCreation
Usage: #example


* entry[careTeam].fullUrl = "urn:uuid:61ebe359-bfdc-4613-8bf2-c5e300945f0a"
* entry[careTeam].resource = cds-careteam-example
* entry[careTeam].request.method = #POST
* entry[careTeam].request.url = "CareTeam"

* entry[organization].fullUrl = "urn:uuid:61ebe359-bfdc-4613-8bf2-c5e300945f0b"
* entry[organization].resource = cds-organization-example
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

* entry[patient].fullUrl = "urn:uuid:61ebe359-bfdc-4613-8bf2-c5e300945f0c"
* entry[patient].resource = cds-patient-example
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

* entry[relatedPerson].fullUrl = "urn:uuid:61ebe359-bfdc-4613-8bf2-c5e300945f0d"
* entry[relatedPerson].resource = cds-relatedperson-example
* entry[relatedPerson].request.method = #POST
* entry[relatedPerson].request.url = "RelatedPerson"