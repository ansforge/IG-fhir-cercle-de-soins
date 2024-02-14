Logical: MembreCercleDeSoins
Id: log-membre-cercle-de-soins
Title: "Membre Cercle De Soins"
Description: "Membre Cercle De Soins"
* dateEntreeCercleSoin 1..* date "Date d'entrée" "Date de début de participation au cercle de soin de la personne prise en charge."
* dateSortieCercleSoin 0..* date "Date de sortie" "Date de fin de participation au cercle de soin de la personne prise en charge."
// * SituationExercice 0..1 SituationExercice "Situation d'exercice" "Situation d'exercice"
// * EntiteGeographique 0..1 EntiteGeographique "Entité géographique" "Entité géographique"
// * OrganisationInterne 0..1 OrganisationInterne "Organisation interne" "Organisation interne"
* metadonnee 0..1 Meta "Informations relatives à la gestion des classes et des données." "Informations relatives à la gestion des classes et des données."
* Contact 0..1 Identifier "Contact" "Il s’agit d’une personne (Professionnel ou Personne Tierce) ou d’une Entité qui fait partie du Cercle de Soins d’un Usager. Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin de participation à ce cercle." 