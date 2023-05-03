Profile: CDS_IHECareTeam
Parent: CareTeam
// Parent: $IHE_DCTM_CareTeam //TODO : find package or IHE guidelines
Id: cds-ihe-careteam
Description: "Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins"
* meta 1..
* meta.lastUpdated 1..
* identifier ..1
* subject 1..
* subject only Reference($FrPatient)
* participant.member only Reference($practitionerRole-organizationalRole-rass or cds-fr-related-person or $FrOrganization or cds-organization-orga-int)
* participant.period.start 1..