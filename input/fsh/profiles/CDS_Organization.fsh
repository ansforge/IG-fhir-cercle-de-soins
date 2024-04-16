Profile: CDSAsOrganization
Parent: as-organization
Id: cds-organization
Description: """Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI)"""
Title: "CDS Organization Profile"


* identifier contains identifierOI 0..1 MS

* identifier[identifierOI] ^short = "identifiantOI (OI) : Identifiant de l'organisation interne, unique et persistant au niveau national"
* identifier[identifierOI].type 1..1 MS
* identifier[identifierOI].type = https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre#42
* identifier[identifierOI].system = "https://oi.esante.gouv.fr"