Profile: CDS_FrRelatedPerson
Parent: $FrRelatedPerson
Id: CDS_FrRelatedPerson
Description: "Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance, …)."
* ^date = "2021-09-30"
* ^publisher = "ANS"
* id 1..
* meta 1..
* relationship[RolePerson] ^sliceName = "RolePerson"
* relationship contains RelatedPerson 0..1
* name 1..1
* name.family 1..
* name.given ..1
* telecom 1..