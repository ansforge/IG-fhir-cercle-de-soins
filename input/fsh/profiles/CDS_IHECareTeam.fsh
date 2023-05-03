Profile: CDS_IHECareTeam
Parent: $IHE_DCTM_CareTeam
Id: CDS_IHECareTeam
Description: "Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins"
* ^date = "2021-12-01"
* ^publisher = "ANS"
* meta 1..
* meta.lastUpdated 1..
* identifier ..1
* subject 1..
* subject only Reference($FrPatient)
* participant.member only Reference($practitionerRole-organizationalRole-rass or CDS_FrRelatedPerson or $FrOrganization or $CDS_Organization-OrgaInt)
* participant.period.start 1..