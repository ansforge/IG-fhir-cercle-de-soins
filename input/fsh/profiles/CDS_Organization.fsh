Profile: CDSAsOrganization
Parent: as-organization
Id: cds-organization
Description: """Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI)"""
Title: "CDS Organization Profile"


* identifier contains identifierOI 0..1 MS

* identifier[identifierOI] ^short = "identifiantOI (OI) : Identifiant de l'organisation interne. Le system https://oi.esante.gouv.fr est à utiliser s'il s'agit de l'OI unique et persistant défini au niveau national."
* identifier[identifierOI].type 1..1 MS
* identifier[identifierOI].type = https://mos.esante.gouv.fr/NOS/TRE_R345-TypeIdentifiantAutre/FHIR/TRE-R345-TypeIdentifiantAutre#42
* identifier[identifierOI].system ^example.valueString = "https://oi.esante.gouv.fr"
// Cette slice pourra être placée sur FrOrganization, cf https://github.com/Interop-Sante/hl7.fhir.fr.core/issues/151

* partOf only Reference(fr-core-organization or AsOrganizationProfile or CDSAsOrganization)