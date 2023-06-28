Profile: CDSFrRelatedPerson
Parent: $FrRelatedPerson
Id: cds-fr-related-person
Description: "Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…)."
* meta 1..
* name 1..1
* name.family 1..
* name.given ..1
* telecom 1..
* relationship[RolePerson] 1..
* relationship[RolePerson] ^short = "Rôle de la personne"
* relationship[RelatedPerson] ..1
* relationship[RelatedPerson] ^short = "Relation de la personne"