Profile: CDSOrganizationOrgaInt
Parent: Organization //TODO : héritage annuaire / IS ?
Id: cds-organization-orga-int
Description: "Profil héritant de la ressource FHIR pour les organisations internes."
* id 1..
* meta 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $mailboxMSS named MailboxMSS 0..*
* identifier ..1
* telecom 1..
* partOf 1..
* partOf only Reference($FrOrganization)
* partOf ^short = "L'entité géographique abritant l'Organisation Interne"