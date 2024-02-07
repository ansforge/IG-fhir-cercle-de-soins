Profile: CDSOrganizationOrgaInt
Parent: as-organization
Id: cds-organization-orga-int
Description: "Profil héritant de la ressource FHIR pour les organisations internes."
* id 1..
* meta 1..

* identifier ..1
* telecom 1..
* partOf 1..
* partOf only Reference($FrOrganization)
* partOf ^short = "L'entité géographique abritant l'Organisation Interne"