Profile: CDSBundleTransactionCreation
Parent: Bundle
Id: cds-bundle-transaction-creation
Description: """Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction.
Il s'agit d'un bundle de type `transaction` permettant d'organiser le contenu du flux de création d'un cercle de soins."""
* type = #transaction
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    careTeam 1..1 and
    patient 1..1 and
    relatedPerson 0..* and
    organization 0..* and
    organizationInterne 0..* and
    practitionerRoleOrg 0..* and
    practitionerPro 0..*

* entry[careTeam].resource 1..
* entry[careTeam].resource only cds-ihe-careteam
* entry[careTeam].request.method obeys req-met
* entry[careTeam].response ..0

* entry[patient].resource 1..
* entry[patient].resource only $FrPatient //TODO Changer vers INS Patient ?
* entry[patient].request.method obeys req-met
* entry[patient].response ..0

* entry[relatedPerson].resource 1..
* entry[relatedPerson].resource only cds-fr-related-person
* entry[relatedPerson].request.method obeys req-met
* entry[relatedPerson].response ..0

* entry[organization].resource 1..
* entry[organization].resource only $FrOrganization
* entry[organization].request.method obeys req-met
* entry[organization].response ..0

* entry[organizationInterne].resource 1..
* entry[organizationInterne].resource only cds-organization-orga-int
* entry[organizationInterne].request.method obeys req-met
* entry[organizationInterne].response ..0

* entry[practitionerRoleOrg] ^short = "Situation d'exercice du PS (PractitionerRole)"
* entry[practitionerRoleOrg].resource 1..
* entry[practitionerRoleOrg].resource only as-practitionerrole
* entry[practitionerRoleOrg].request.method obeys req-met
* entry[practitionerRoleOrg].response ..0

* entry[practitionerPro] ^short = "Exercice professionnel du PS (Practitioner)"
* entry[practitionerPro].resource 1..
* entry[practitionerPro].resource only as-practitioner
* entry[practitionerPro].request.method obeys req-met
* entry[practitionerPro].response ..0