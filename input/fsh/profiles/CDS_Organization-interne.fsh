Profile: CDSOrganizationInterne
Parent: as-organization
Id: cds-organization-interne
Description: "Profil héritant de la ressource FHIR pour les organisations internes - organisation opérationnelle interne d'une EG permettant de délivrer la prestation."

* meta MS

* identifier MS
* identifier ..1

* active MS
* active ^short = "Indique si l'enregistrement de l'organisation est toujours en cours d'utilisation."

* type MS

* name MS

* telecom MS
* telecom 1..
* telecom ^short = "Contact de l’organisation"

* partOf MS
* partOf 1..
* partOf only Reference(as-organization)
* partOf ^short = "L'entité géographique abritant l'Organisation Interne"