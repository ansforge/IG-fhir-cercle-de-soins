Logical: Contact
Id: log-contact
Title: "Contact"
Description: "Contact"
* idMembreCercleSoins 1..1 Identifier "Identifiant du membre du cercle de soins." "Identifiant du membre du cercle de soins."
* telecommunication 1..* ContactPoint "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.)" "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.)"
* adresse 0..* Address "Adresse(s) géopostale(s)" "Adresse(s) géopostale(s)"
* role 1..1 code "Role du contact" "Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager. Il peut s’agir par exemple du rôle d’aidant, de personne de confiance, de responsable légal. "
* description 0..1 string "Une description du contact." "Une description du contact."
* relation 0..1 code "Lien de relation" "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc."
* metadonnee 1..1 Meta "Informations relatives à la gestion des classes et des données." "Informations relatives à la gestion des classes et des données."