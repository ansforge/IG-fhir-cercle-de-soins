Logical: CercleDeSoins
Id: log-cercle-de-soins
Title: "Cercle De Soins"
Description: "Cercle De Soins"
* idCercleSoins 1..1 Identifier "Identifiant du cercle de soins." "Identifiant du cercle de soins."
* dateCreation 1..1 date "Date de création du cercle de soin." "Date de création du cercle de soin."
* dateMAJ 1..* date "Date de mise à jour du cercle de soin." "Le concept de cercle de soins a plusieurs dates de mise à jour mais chaque version de la ressource, et donc chaque instance de la ressource, ne peut avoir qu’une seule date de mise à jour"
* dateFin 0..1 date "Date de fin d'existence du cercle de soins." "Date de fin d'existence du cercle de soins."
* statut 0..1 code "Statut du cercle de soins." "La liste des valeurs possibles n'est pas définie par ces spécifications. Les codes possibles ainsi que le sens donné sont définis par le gestionnaire en fonction du projet. Il peut s'inspirer du jeu de valeur FHIR CareTeamStatus (proposed | active | suspended | inactive | entered-in-error).]]"
* metadonnee 1..1 Meta "Informations relatives à la gestion des classes et des données." "Informations relatives à la gestion des classes et des données."
* PersonnePriseCharge 1..1 PersonnePriseCharge "Personne prise en charge." "La personne prise en charge."
* MembreCercleSoin 0..*  MembreCercleDeSoins "Membre du cercle de soin" "Membre du cercle de soin"



// Deux possibilités de mapping :
// Soit mapping direct dans les StructureDefinition (au niveau du profil ou du modèle logique)
// Soit mapping via une ConceptMap

// ###############################
// # Mapping 1 : In log-model SD #
// ###############################

// From https://github.com/hl7-be/vaccination/blob/master/input/fsh/logicals/BeVaccination-Model.fsh
Mapping: ModelCDSToCDS
Source: CercleDeSoins
Target: "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam"
Id: map-log-cercle-de-soins-to-cercle-de-soins
Title: "Mapping modèle logique Cercle De Soins"
* -> "CDSCareTeam"
* idCercleSoins -> "identifier"
* dateCreation -> "period.start"
* dateMAJ -> "meta.lastUpdated"
* dateFin -> "period.end"
* statut -> "status"
* metadonnee -> "meta"
* PersonnePriseCharge -> "subject"
* MembreCercleSoin -> "participant.member"

// #############################
// # Mapping 2 : In ConceptMap #
// #############################

// From https://github.com/hl7-eu/laboratory/blob/master/input/fsh/models/result-to-fhir-map.fsh

Instance: cds2FHIR
InstanceOf: ConceptMap
Usage: #definition
* name = "CDS2FHIR"
* title = "Cercle De Soins logical model - profile mapping"
* status = #draft
* experimental = true
* description = "Mapping du CDS du modèle logique vers le profil FHIR CDS"
* purpose = "Mapping du CDS du modèle logique vers le profil FHIR CDS"
* sourceUri = "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/log-cercle-de-soins"
* targetUri = "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam"

* group[+].source = "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/log-cercle-de-soins"
* group[=].target = "http://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-ihe-careteam"


* group[=].element[+].code = #CercleDeSoins
* group[=].element[=].display = "Cercle de soins"
* group[=].element[=].target.code = #CareTeam
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.idCercleSoins
* group[=].element[=].display = "Identifiant cercle de soins"
* group[=].element[=].target.code = #CareTeam.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.dateCreation
* group[=].element[=].display = "Date de création"
* group[=].element[=].target.code = #CareTeam.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.dateMAJ
* group[=].element[=].display = "Date de mise à jour du cercle de soin"
* group[=].element[=].target.code = #CareTeam.lastUpdated
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.dateFin
* group[=].element[=].display = "Date de fin d'existence du cercle de soins"
* group[=].element[=].target.code = #CareTeam.period.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.statut
* group[=].element[=].display = "Statut du cercle de soins"
* group[=].element[=].target.code = #CareTeam.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.metadonnee
* group[=].element[=].display = "Informations relatives à la gestion des classes et des données"
* group[=].element[=].target.code = #CareTeam.meta
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.PersonnePriseCharge
* group[=].element[=].display = "Personne prise en charge"
* group[=].element[=].target.code = #CareTeam.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CercleDeSoins.MembreCercleSoin
* group[=].element[=].display = "Membre du cercle de soin"
* group[=].element[=].target.code = #CareTeam.participant.member
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

// TODO à finir