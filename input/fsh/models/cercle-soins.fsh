Logical: CercleDeSoins
Id: log-cercle-de-soins
Title: "Cercle De Soins"
Description: "Cercle De Soins"
* idCercleSoins 1..1 Identifier "test" "test"
* dateCreation 1..1 date "test" "test"
* dateMAJ 1..* date "Le concept de cercle de soins a plusieurs dates de mise à jour mais chaque version de la ressource, et donc chaque instance de la ressource, ne peut avoir qu’une seule date de mise à jour" "test"
* dateFin 0..1 date "test" "test"
* statut 0..1 code "test" "test"
* metadonnee 1..1 Meta "test" "test"
// * PersonnePriseCharge 1..1 Canonical(log-personne-prise-charge) "La personne prise en charge sera décrite dans une partie spécifique PersonnePriseCharge." "test"
// * MembreCercleSoin 0..*  Reference() "test" "test"