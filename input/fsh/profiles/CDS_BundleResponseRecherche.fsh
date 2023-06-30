Profile: CDSBundleResponseRecherche
Parent: Bundle
Id: cds-bundle-response-recherche
Description: "« Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET."
* type = #searchset
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    careTeam 0..* and
    patient 0..* and
    relatedPerson 0..* and
    organization 0..* and
    organizationInterne 0..* and
    practitioneRoleOrg 0..* and
    practitionerRolePro 0..* and
    practitioner 0..*

* entry[careTeam].resource 1..
* entry[careTeam].resource only cds-ihe-careteam
* entry[careTeam].search.mode = #match
* entry[careTeam].request ..0
* entry[careTeam].response ..0

* entry[patient].resource 1..
* entry[patient].resource only $FrPatient
* entry[patient].search.mode = #include
* entry[patient].request ..0
* entry[patient].response ..0

* entry[relatedPerson].resource 1..
* entry[relatedPerson].resource only cds-fr-related-person
* entry[relatedPerson].search.mode = #include
* entry[relatedPerson].request ..0
* entry[relatedPerson].response ..0

* entry[organization].resource 1..
* entry[organization].resource only $FrOrganization
* entry[organization].search.mode = #include
* entry[organization].request ..0
* entry[organization].response ..0

* entry[organizationInterne].resource 1..
* entry[organizationInterne].resource only cds-organization-orga-int
* entry[organizationInterne].search.mode = #include
* entry[organizationInterne].request ..0
* entry[organizationInterne].response ..0

* entry[practitioneRoleOrg].resource 1..
* entry[practitioneRoleOrg].resource only $practitionerRole-organizationalRole-rass
* entry[practitioneRoleOrg].search.mode = #include
* entry[practitioneRoleOrg].request ..0
* entry[practitioneRoleOrg].response ..0

* entry[practitionerRolePro].resource 1..
* entry[practitionerRolePro].resource only $practitionerRole-professionalRole-rass
* entry[practitionerRolePro].search.mode = #include
* entry[practitionerRolePro].request ..0
* entry[practitionerRolePro].response ..0

* entry[practitioner].resource 1..
* entry[practitioner].resource only $FrPractitioner
* entry[practitioner].search.mode = #include
* entry[practitioner].request ..0
* entry[practitioner].response ..0