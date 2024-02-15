// Previously named CDS_IHECareTeam
Profile: CDSCareTeam
Parent: CareTeam // Take IHE_DCTM_CareTeam constraint https://github.com/IHE/fhir/blob/master/StructureDefinition/structuredefinition-IHE_DCTM_CareTeam.xml
Id: cds-ihe-careteam
Description: """Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam »."""
* meta 1..
* meta.lastUpdated MS

* identifier 1..1
* identifier ^short = "Identifiant du cercle de soins"
* identifier MS
* identifier.value 1..
* identifier.value ^requirements = "This version of the profile requires an ID identifying this profile as an IHE PCC Dynamic Care Team"

* status 1..1
* status ^short = "Statut du cercle de soin.\n valeurs autorisées : proposed | active | suspended | inactive | entered-in-error"

* category ^short = "Type d’équipe. Une personne prise en charge ne peut avoir qu’un cercle de soins donc cet élément n’est pas utilisé."

* name 1..1 
* name ^short = "Nom de l’équipe tel que « Cercle de soins de Mr Dupont »."

* subject 1..1
* subject only Reference(CDSFrPatient) 
* subject ^short = "Le sujet du cercle de soins est une personne prise en charge (« Patient »)."

* encounter only Reference(Encounter)
* encounter ^short = "La rencontre au cours de laquelle le cercle de soins a été créé ou à laquelle la création de cet enregistrement est étroitement associée n’est pas utilisée dans ce volet."
* encounter ^comment = "This profile allows for CareTeam creation outside of the context of an encounter or episode."

* period 1..1
* period ^short = "Période couverte par le cercle de soins."
* period ^requirements = "Allows tracking what team(s) are in effect at a particular time. This version of the profile requires period for the CareTeam."

* period.start 1..
* period.start ^short = "Date de création du cercle de soin."
* period.start ^comment = "This version of the profile requires at least a start time for the CareTeam."
* period.end ^short = "Date de fin d'existence du cercle de soin."

* participant ^short = "Membres du cercle de soins."
* participant ^comment = "It is possible for a care team to be set up with roles specified only, before actual participants are invited into or identified as team members"

* participant.member 1..
* participant.member ^requirements = "Need to know who the member is if participant is required.\r\nThis version of the profile requires that a DynamicCareTeam be referenced when the member is a care team."
* participant.member only Reference(as-practitionerrole or cds-fr-related-person or as-organization or cds-organization-interne)
* participant.member ^short = "Il s’agit d’une personne (Professionnel ou Personne Tierce) ou d’une Entité qui fait partie du Cercle de Soins d’un Usager"
* participant.period ^comment = "Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin (optionnelle) de participation à ce cercle."

* participant.period.start 1..
* participant.period.start ^short = "Date de début de participation au cercle de soin de la personne prise en charge Un membre doit pouvoir entrer et sortir plusieurs fois du cercle de soins. Pour satisfaire cette demande, il est possible de créer plusieurs instances de l’élément participant faisant référence au même membre mais à des périodes différentes."

* managingOrganization ^short = "L’organisation responsable du cercle de soins."

* telecom ^short = "Point de contact central du cercle de soins (qui s’applique à tous les membres) ; élément non utilisé dans le cadre de ce volet."

* note ^short = "Commentaires sur le cercle de soins."