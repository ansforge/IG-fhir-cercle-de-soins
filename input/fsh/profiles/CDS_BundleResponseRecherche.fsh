Profile: CDSBundleResponseRecherche
Parent: Bundle
Id: cds-bundle-response-recherche
Title: "CDS Bundle Response Recherche Profile"
Description: "Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET."
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
    practitionerRoleOrg 0..* and
    practitionerPro 0..*

* entry[careTeam].resource 1..
* entry[careTeam].resource only cds-ihe-careteam
* entry[careTeam].search.mode = #match
* entry[careTeam].request ..0
* entry[careTeam].response ..0

* entry[patient].resource 1..
* entry[patient].resource only CDSFrPatient
* entry[patient].search.mode = #include
* entry[patient].request ..0
* entry[patient].response ..0

* entry[relatedPerson].resource 1..
* entry[relatedPerson].resource only cds-fr-related-person
* entry[relatedPerson].search.mode = #include
* entry[relatedPerson].request ..0
* entry[relatedPerson].response ..0

* entry[organization].resource 1..
* entry[organization].resource only as-organization
* entry[organization].search.mode = #include
* entry[organization].request ..0
* entry[organization].response ..0

* entry[organizationInterne].resource 1..
* entry[organizationInterne].resource only cds-organization-interne
* entry[organizationInterne].search.mode = #include
* entry[organizationInterne].request ..0
* entry[organizationInterne].response ..0

* entry[practitionerRoleOrg] ^short = "Situation d'exercice du PS (PractitionerRole)"
* entry[practitionerRoleOrg].resource 1..
* entry[practitionerRoleOrg].resource only as-practitionerrole
* entry[practitionerRoleOrg].search.mode = #include
* entry[practitionerRoleOrg].request ..0
* entry[practitionerRoleOrg].response ..0

* entry[practitionerPro] ^short = "Exercice professionnel du PS (Practitioner)"
* entry[practitionerPro].resource 1..
* entry[practitionerPro].resource only as-practitioner
* entry[practitionerPro].search.mode = #include
* entry[practitionerPro].request ..0
* entry[practitionerPro].response ..0