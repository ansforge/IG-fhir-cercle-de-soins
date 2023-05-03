Profile: CDS_BundleTransactionMAJ
Parent: Bundle
Id: cds-bundle-transaction-maj
Description: """Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction.
Il s'agit d'un bundle de type "transaction" permettant d'organiser le contenu du flux de création d'un cercle de soins."""
* type = #transaction (exactly)
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
    practitionerRolePro 0..* and
    practitioner 0..*
* entry[careTeam].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[careTeam].resource 1..
* entry[careTeam].resource only CDS_IHECareTeam
* entry[careTeam].request.method obeys req-met-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[careTeam].request.method ^constraint.source = "Bundle"
* entry[careTeam].response ..0
* entry[patient].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[patient].resource 1..
* entry[patient].resource only $FrPatient
* entry[patient].request.method obeys req-met-2
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[patient].request.method ^constraint.source = "Bundle"
* entry[patient].response ..0
* entry[relatedPerson].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[relatedPerson].resource 1..
* entry[relatedPerson].resource only cds-fr-related-person
* entry[relatedPerson].request.method obeys req-met-3
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[relatedPerson].request.method ^constraint.source = "Bundle"
* entry[relatedPerson].response ..0
* entry[organization].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[organization].resource 1..
* entry[organization].resource only $FrOrganization
* entry[organization].request.method obeys req-met-4
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[organization].request.method ^constraint.source = "Bundle"
* entry[organization].response ..0
* entry[organizationInterne].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[organizationInterne].resource 1..
* entry[organizationInterne].resource only cds-organization-orga-int
* entry[organizationInterne].request.method obeys req-met-7
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[organizationInterne].request.method ^constraint.source = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/cds-bundle-transaction-creation"
* entry[organizationInterne].response ..0
* entry[practitionerRoleOrg].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[practitionerRoleOrg].resource 1..
* entry[practitionerRoleOrg].resource only $practitionerRole-organizationalRole-rass
* entry[practitionerRoleOrg].request.method obeys req-met-8
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[practitionerRoleOrg].request.method ^constraint.source = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/cds-bundle-transaction-creation"
* entry[practitionerRoleOrg].response ..0
* entry[practitionerRolePro].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[practitionerRolePro].resource 1..
* entry[practitionerRolePro].resource only $practitionerRole-professionalRole-rass
* entry[practitionerRolePro].request.method obeys req-met-5
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[practitionerRolePro].request.method ^constraint.source = "Bundle"
* entry[practitionerRolePro].response ..0
* entry[practitioner].link ^contentReference = "http://hl7.org/fhir/StructureDefinition/Bundle#Bundle.link"
* entry[practitioner].resource 1..
* entry[practitioner].resource only $FrPractitioner
* entry[practitioner].request.method obeys req-met-6
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* entry[practitioner].request.method ^constraint.source = "Bundle"
* entry[practitioner].response ..0