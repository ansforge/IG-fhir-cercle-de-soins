# Correspondances métier - Cercle De Soins v2.0.1

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Correspondances métier**

## Correspondances métier

Dans cette section, la mise en correspondance est faite entre :

* Les objets métier identifiés à l’issue des spécifications fonctionnelles des échanges,
* Les ressources du standard HL7 FHIR.

Pour chaque objet métier, les tableaux ci-dessous reprennent l’ensemble des éléments métier identifiés dans l’étude métier du cas d’usage. Pour chaque attribut de chaque classe métier, la ressource FHIR et plus particulièrement l’élément de cette ressource utilisé pour véhiculer l’information est identifié. Lorsqu’un profil existant est identifié, les caractéristiques de l’élément FHIR de ce profil sont rapportées (par exemple IHECareTeam ou encore FrPatient).

### Flux 1 : Création d’un cercle de soins

Le flux 1 - CreationCercleSoins contient les informations relatives à la création d’un cercle de soins.

| | | | |
| :--- | :--- | :--- | :--- |
| **Nom classe** | **Nom attribut** | **Ressource** | **Elément** |
| CercleSoins | idCercleSoins : [1..1] Identifiant | **CareTeam****IHECareTeam** | identifier : Identifier [1..*] |
| dateCreation : [1..1] Date | **CareTeam****IHECareTeam** | period[1..1].start : dateTime [1..1] | |
| dateMAJ : [1..*] Date[10] | **CareTeam****IHECareTeam** | meta[0..1].lastUpdated : instant [0..1] | |
| dateFin : [0..1] Date | **CareTeam****IHECareTeam** | period[1..1].end : dateTime [0..1] | |
| statut : [0..1] code | **CareTeam****IHECareTeam** | status : code [1..1] | |
| metadonnee : [1..1] Metadonnee | **CareTeam****IHECareTeam** | meta : Meta [0..1] | |
| PersonnePriseCharge : [1..1][11] | **CareTeam****IHECareTeam** | subject : Reference [1..1] (Patient) | |
| MembreCercleSoin : [0..*][12] | **CareTeam****IHECareTeam** | participant : BackboneElement [0..*] | |
| PersonnePriseCharge | INS : [1..1] INS[13]* matriculeINS : [1..1] Identifiant
* nomFamille : [1..1] Texte
* prenomActeNaissance : [1..1] Texte
* premierPrenomActeNaissance : [1..1] Texte
* nomUtilise : [1..1] Texte
* prenomUtilise : [1..1] Texte
* sexe : [1..1] Code


  dateNaissance : [1..1] DateHeure
* lieuNaissance : [1..1] Texte
 | **Patient****FrPatient** | * Identifier : Identifier [0..*]
* 
>  
Slice « INS-NIR » 

* 
>  
Slice « INS-NIA » 

* 
>  
Slice « INS-C » 

* name[1..*].family : string [1..1] (FrHumanName)
* name[1..*].text : string [0..1] (FrHumanName)
* name[1..*].given : string [1..1] (FrHumanName)


  Slice officialName, Patient.name.use prenant la valeur « official »)
* name[1..*].family : string [0..1] (FrHumanName)
* name[1..*].given : string [0..*] (FrHumanName)


  Slice usualName, Patient.name.use prenant la valeur « usual »
* gender : code [1..1]
* birthDate : date [1..1]
* birthPlace : Extension(Address) [0..1] Extension (BirthPlace)
 |
| idPersonnePriseCharge : [0..*] Identifiant | **Patient****FrPatient** | identifier : Identifier [0..*] | |
| adresseCorrespondance : [1..1] Adresse | **Patient****FrPatient** | address : FrAddress [0..*] | |
| telecommunication : [1..*] Telecommunication | **Patient****FrPatient** | telecom : FrContactPoint [0..*] | |
| metadonnee : [1..1] Metadonnee | **Patient****FrPatient** | meta : Meta [0..1] | |
| PersonnePhysique | civilite : [0..1] Code | **Patient****FrPatient** | name[1..*].prefix : string [0..1] (FrHumanName)Slice « officialName », Patient.name.use prenant la valeur « official » |
| nomFamille : [0..1] Texte | **Patient****FrPatient** | name[1..*].family : string [0..1] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » | |
| prenom : [0..*] Texte | **Patient****FrPatient** | name[1..*].given : string [0..*] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » | |
| sexe : [0..1] Code | **Patient****FrPatient** | gender : code [1..1] | |
| langueParlee : [0..*] LangueParlee | **Patient****FrPatient** | communication[0..*].language : CodeableConcept [1..1] | |
| situationFamiliale : [0..1] Code | **Patient****FrPatient** | maritalStatus : CodeableConcept [0..1] | |
| dateNaissance : [0..1] Date | **Patient****FrPatient** | birthDate : date [1..1] | |
| lieuNaissance : [0..1] Texte | **Patient****FrPatient** | birthPlace : Extension(Address) [0..1]Extension BirthPlace | |
| paysResidence : [0..1] Code | **Patient****FrPatient** | address[0..*].country : string [0..1] (FrAddress) | |
| metadonnee : [1..1] Metadonnee | **Patient****FrPatient** | meta : Meta [0..1] | |
| MembreCercleSoin | dateEntreeCercleSoin : [1..*] Date | **CareTeam****IHECareTeam** | participant [0..*].period[1..1].start : dateTime [0..1] |
| dateSortieCercleSoin : [0..*] Date | **CareTeam****IHECareTeam** | participant [0..*].period[1..1].end : dateTime [0..1] | |
| SituationExercice : [0..1]7 | **CareTeam****IHECareTeam** | participant[0..*].member :Reference [1..1](Practitioner|PractitionerRole| RelatedPerson|Patient|Organization|CareTeam) | |
| EntiteGeographique : [0..1]7 | | | |
| OrganisationInterne : [0..1]7 | | | |
| Contact : [0..1]7 | | | |
| Contact | idMembreCercleSoin : [1..1] Identifiant | **RelatedPerson****FrRelatedPerson** | id : Id [0..1] |
| telecommunication : [1..*] Telecommunication | **RelatedPerson****FrRelatedPerson** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Adresse | **RelatedPerson****FrRelatedPerson** | address : FrAddress [0..*] | |
| role : [1..1] Code | **RelatedPerson****FrRelatedPerson** | relationship : CodeableConcept [1..*]Slice « RolePerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass » | |
| description : [0..1] Texte | **RelatedPerson****FrRelatedPerson** | text : Narrative [0..1] | |
| relation : [0..1] Code | **RelatedPerson****FrRelatedPerson** | relationship : CodeableConcept [1..*]Slice « RelatedPerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode» | |
| metadonnee : [1..1] Metadonnee | **RelatedPerson****FrRelatedPerson** | meta : Meta [0..1] | |
| PersonnePhysique | nomFamille : [1..1] Texte | **RelatedPerson****FrRelatedPerson** | name[0..*].family : string [0..1] (FrHumanName) |
| prenom [0..1] Texte | **RelatedPerson****FrRelatedPerson** | name[0..*].given : string [0..*] (FrHumanName) | |
| civilite [0..1] Code | **RelatedPerson****FrRelatedPerson** | name[0..*].prefix : string [0..1] (FrHumanName) | |
| SituationExercice | idMembreCercleSoin : [1..1] Identifiant | **PractitionerRole****ASPractitionerRole** | id : Id [0..1] |
| telecommunication : [1..*] Telecommunication | **PractitionerRole****ASPractitionerRole** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Adresse | **PractitionerRole****ASPractitionerRole** | location[0..*].address : FrAddressExtended [0..1](LocationRASS) | |
| modeExercice : [0..1] Code | **PractitionerRole****ASPractitionerRole** | code : CodeableConcept [0..*]Slice « modeExercice » | |
| role : [0..1] Code | **PractitionerRole****ASPractitionerRole** | code : CodeableConcept [0..*] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **PractitionerRole****ASPractitionerRole** | mailboxMSS[0..*].value : string [0..1]Extension MailboxMSS | |
| metadonnee : [1..1] Metadonnee | **PractitionerRole****ASPractitionerRole** | meta : Meta [0..1] | |
| EntiteGeographique : [0..1][14] | **PractitionerRole****ASPractitionerRole** | organization : Reference [0..1] (Organization) | |
| xerciceProfessionnel | civiliteExercice : [0..1] Code | **Practitioner****AsPractitioner** | name[0..*].suffix : string [0..*] (FrHumanName) |
| nomExercice : [0..1] Texte | **Practitioner****AsPractitioner** | name[0..*].family : string [0..1] (FrHumanName) | |
| prenomExercice : [0..1] Texte | **Practitioner****AsPractitioner** | name[0..*].given : string [0..*] (FrHumanName) | |
| profession : [0..1] Code | **Practitioner****AsPractitioner** | qualification : CodeableConcept [0..*]* Slice « professionG15 »
* Slice « professionR94 »
* Slice « professionR95 »
* Slice « professionR291 »
 | |
| metadonnee : [1..1] Metadonnee | **Practitioner****AsPractitioner** | meta : Meta [0..1] | |
| Professionnel | idPP : [0..1] Identifiant | **Practitioner****ASPractitioner** | identifier : Identifier [0..*] |
| typeIdNat_PP : [0..1] Code | **Practitioner****ASPractitioner** | identifier.type : CodeableConcept [1..1] | |
| metadonnee : [1..1] Metadonnee | **Practitioner****ASPractitioner** | meta : Meta [0..1] | |
| PersonnePhysique | civilite : [0..1] Code | **Practitioner****ASPractitioner** | name[0..*].prefix : string [0..1] (FrHumanName) |
| nomFamille : [0..1] Texte | **Practitioner****ASPractitioner** | name[0..*].family : string [0..1] (FrHumanName) | |
| prenom : [0..*] Texte | **Practitioner****ASPractitioner** | name[0..*].given : string [0..*] (FrHumanName) | |
| sexe : [0..1] Code | **Practitioner****ASPractitioner** | gender : code [0..1] | |
| langueParlee : [0..*] LangueParlee | **Practitioner****ASPractitioner** | communication : CodeableConcept [0..*] | |
| dateNaissance : [0..1] Date | **Practitioner****ASPractitioner** | birthDate : date [0..1] | |
| metadonnee : [1..1] Metadonnee | **Practitioner****ASPractitioner** | meta : Meta [0..1] | |
| EntiteGeographique | idMembreCercleSoin : [1..1] Identifiant | **Organization****ASOrganization** | id : Id [0..1] |
| numFINESS : [0..1] Identifiant | **Organization****ASOrganization** | identifier : Identifier [0..*] | |
| numSIRET : [0..1] Identifiant | | | |
| identifiantEG : [0..1] Identifiant | | | |
| idNat_struct : [0..1] Identifiant | | | |
| telecommunication : [1..*] Telecommunication | **Organization****ASOrganization** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Adresse | **Organization****ASOrganization** | address : FrAddress [0..*] | |
| denominationEG : [0..1] Texte | **Organization****ASOrganization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization****ASOrganization** | telecom : [0..*] FrContactPoint | |
| metadonnee : [1..1] Metadonnee | **Organization****ASOrganization** | meta : Meta [0..1] | |
| EntiteJuridique : [1..1] [17] | **Organization****ASOrganization** | partOf : Reference [0..1] (ASOrganization) | |
| EntiteJuridique | numFINESS : [0..1] Identifiant | **Organization****ASOrganization** | identifier : Identifier [0..*] |
| numSIREN : [0..1] Identifiant | | | |
| identifiantEJ : [0..1] Identifiant | | | |
| idNat_struct : [0..1] Identifiant | | | |
| raisonSociale : [0..1] Texte | **Organization****ASOrganization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization****ASOrganization** | telecom : [0..*] FrContactPoint | |
| metadonnee : [1..1] Metadonnee | **Organization****ASOrganization** | meta : Meta [0..1] | |
| OrganisationInterne | idMembreCercleSoin : [1..1] Identifiant | **Organization**[18] | id : Id [0..1] |
| identifiantOI : [0..1] Identifiant | **Organization** | identifier : Identifier [0..*] | |
| telecommunication : [1..*] Telecommunication | **Organization** | telecom : ContactPoint [0..*] | |
| adresse : [0..*] Adresse | **Organization** | address : Address [0..*] | |
| nom : [0..1] Texte | **Organization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization** | mailboxMSS[0..*].value : string [0..1]Extension MailboxMSS (rass) | |
| metadonnee : [1..1] Metadonnee | **Organization** | meta : Meta [0..1] | |
| EntiteGeographique : [1..1]9 | **Organization** | partOf : reference [0..1] (Organization) | |

Tableau 4 Mise en correspondance des contenus métier / standard du flux 1

### Flux 2 : Recherche de cercles de soins

Le flux 2 - RechercheCercleSoins contient les critères pour rechercher un ou plusieurs cercle(s) de soins.

| | | |
| :--- | :--- | :--- |
| CercleSoins/idCercleSoins | CareTeam | identifier : token |
| CercleSoins/dateCreation | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet : start** | |
| CercleSoins/dateFin | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet : end** | |
| CercleSoins/statut | status : token | |
| CercleSoins/dateMAJ | Meta | _lastUpdated : date |
| MembreCercleSoin/dateEntréeCercleSoin | CareTeam | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet: participant-start** |
| MembreCercleSoin/dateSortieCercleSoin | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet: participant-end** | |
| PersonnePriseCharge/idPersonnePriseCharge | Patient | identifier : token |
| PersonnePriseCharge/adresseCorrespondance | address : string | |
| PersonnePhysique/nomFamille | family : string | |
| PersonnePhysique/prenom | given : string | |
| PersonnePhysique/dateNaissance | birthdate : date | |
| PersonnePhysique/lieuNaissance | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet : birthplace** | |
| PersonnePhysique/sexe | gender : token | |
| MembreCercleSoin/idMembreCercleSoin | RelatedPerson | _id : token |
| PersonnePhysique/nomFamille | name : string | |
| Contact/role | relationship : token | |
| MembreCercleSoin/idMembreCercleSoin | PractitionerRole | _id : token |
| ExerciceProfessionnel/profession | role : token | |
| ExerciceProfessionnel/nomExercice | **Pas de correspondance****Paramètre de recherche créé dans le cadre de ce volet : nameex** | |
| SituationExercice/role | role : token | |
| Professionnel/idPP | Practitioner | identifier : token |
| MembreCercleSoin/idMembreCercleSoin | Organization | _id : token |
| EntiteGeographique/identifiantEG | identifier : token | |
| EntiteGeographique/numFINESS | | |
| EntiteGeographique/numSIRET | | |
| EntiteGeographique/idNat_struct | | |
| EntiteJuridique/identifiantEJ | identifier : token | |
| EntiteJuridique/numFINESS | | |
| EntiteJuridique/numSIREN | | |
| EntiteJuridique/idNat_struct | | |
| EntiteGeographique/denominationEG | name : string | |
| OrganisationInterne/identifiantOI | identifier : token | |
| OrganisationInterne/nom | name : string | |
| EntiteJuridique/raisonSociale | name : string | |

Tableau 5 Mise en correspondance des contenus métier / standard du flux 2

