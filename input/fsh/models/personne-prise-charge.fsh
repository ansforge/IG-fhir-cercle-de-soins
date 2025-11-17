Logical: PersonnePriseCharge
Id: log-personne-prise-charge
Title: "Personne Prise En Charge"
Description: "Personne Prise En Charge"
* INS 1..1 Identifier "INS du patient" "INS du patient"
* idPersonnePriseCharge 0..* Identifier "Identifiant personne prise en charge" "Identifiant personne prise en charge"
* adresseCorrespondance 1..1 Address "Adresse(s) de correspondance de la personne prise en charge." "Adresse(s) de correspondance de la personne prise en charge."
* telecommunication 1..* ContactPoint "Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, etc.)." "Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, etc.)."
* metadonnee 1..1 Meta "Informations relatives à la gestion des classes et des données." "Informations relatives à la gestion des classes et des données."