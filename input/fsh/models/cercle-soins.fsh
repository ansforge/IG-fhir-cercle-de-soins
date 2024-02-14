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
// * MembreCercleSoin 0..*  Reference() "test" "test"