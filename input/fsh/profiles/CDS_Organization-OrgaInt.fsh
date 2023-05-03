Profile: CDS_Organization-OrgaInt
Parent: Organization
Id: CDS_Organization-OrgaInt
Description: "Profil héritant de la ressource FHIR pour les organisations internes."
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS_Organization-OrgaInt"
* ^version = "2.0"
* ^status = #active
* ^date = "2021-12-01"
* ^publisher = "ANS"
* id 1..
* meta 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains $mailboxMSS named MailboxMSS 0..*
* extension[MailboxMSS] ^min = 0
* identifier ..1
* telecom 1..
* partOf 1..
* partOf only Reference($FrOrganization)