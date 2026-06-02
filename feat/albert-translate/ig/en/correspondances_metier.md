# Correspondances métier - Cercle De Soins v2.0.1

## Correspondances métier

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

In this section, the mapping is made between:

* The business objects identified following the functional specifications of the exchanges,
* The resources of the HL7 FHIR standard.

For each business object, the tables below list all the business elements identified in the business study of the use case. For each attribute of each business class, the FHIR resource and more specifically the element of this resource used to convey the information is identified. When an existing profile is identified, the characteristics of the FHIR element of this profile are reported (for example IHECareTeam or FrPatient).

### Flow 1: Creation of a care circle

Flow 1 - CreationCercleSoins contains the information related to the creation of a care circle.

| | | | |
| :--- | :--- | :--- | :--- |
| **Class name** | **Attribute name** | **Resource** | **Element** |
| CercleSoins | idCercleSoins : [1..1] Identifier | **CareTeam****IHECareTeam** | identifier : Identifier [1..*] |
| dateCreation : [1..1] Date | **CareTeam****IHECareTeam** | period[1..1].start : dateTime [1..1] | |
| dateMAJ : [1..*] Date[10] | **CareTeam****IHECareTeam** | meta[0..1].lastUpdated : instant [0..1] | |
| dateFin : [0..1] Date | **CareTeam****IHECareTeam** | period[1..1].end : dateTime [0..1] | |
| statut : [0..1] code | **CareTeam****IHECareTeam** | status : code [1..1] | |
| metadonnee : [1..1] Metadonnee | **CareTeam****IHECareTeam** | meta : Meta [0..1] | |
| PersonnePriseCharge : [1..1][11] | **CareTeam****IHECareTeam** | subject : Reference [1..1] (Patient) | |
| MembreCercleSoin : [0..*][12] | **CareTeam****IHECareTeam** | participant : BackboneElement [0..*] | |
| PersonnePriseCharge | INS : [1..1] INS[13]* matriculeINS : [1..1] Identifier
* nomFamille : [1..1] Text
* prenomActeNaissance : [1..1] Text
* premierPrenomActeNaissance : [1..1] Text
* nomUtilise : [1..1] Text
* prenomUtilise : [1..1] Text
* sexe : [1..1] Code


  dateNaissance : [1..1] DateTime
* lieuNaissance : [1..1] Text
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


  Slice officialName, Patient.name.use taking the value « official »)
* name[1..*].family : string [0..1] (FrHumanName)
* name[1..*].given : string [0..*] (FrHumanName)


  Slice usualName, Patient.name.use taking the value « usual »
* gender : code [1..1]
* birthDate : date [1..1]
* birthPlace : Extension(Address) [0..1] Extension (BirthPlace)
 |
| idPersonnePriseCharge : [0..*] Identifier | **Patient****FrPatient** | identifier : Identifier [0..*] | |
| adresseCorrespondance : [1..1] Address | **Patient****FrPatient** | address : FrAddress [0..*] | |
| telecommunication : [1..*] Telecommunication | **Patient****FrPatient** | telecom : FrContactPoint [0..*] | |
| metadonnee : [1..1] Metadonnee | **Patient****FrPatient** | meta : Meta [0..1] | |
| PersonnePhysique | civilite : [0..1] Code | **Patient****FrPatient** | name[1..*].prefix : string [0..1] (FrHumanName)Slice « officialName », Patient.name.use taking the value « official » |
| nomFamille : [0..1] Text | **Patient****FrPatient** | name[1..*].family : string [0..1] (FrHumanName)Slice « usualName », Patient.name.use taking the value « usual » | |
| prenom : [0..*] Text | **Patient****FrPatient** | name[1..*].given : string [0..*] (FrHumanName)Slice « usualName », Patient.name.use taking the value « usual » | |
| sexe : [0..1] Code | **Patient****FrPatient** | gender : code [1..1] | |
| langueParlee : [0..*] LangueParlee | **Patient****FrPatient** | communication[0..*].language : CodeableConcept [1..1] | |
| situationFamiliale : [0..1] Code | **Patient****FrPatient** | maritalStatus : CodeableConcept [0..1] | |
| dateNaissance : [0..1] Date | **Patient****FrPatient** | birthDate : date [1..1] | |
| lieuNaissance : [0..1] Text | **Patient****FrPatient** | birthPlace : Extension(Address) [0..1]Extension BirthPlace | |
| paysResidence : [0..1] Code | **Patient****FrPatient** | address[0..*].country : string [0..1] (FrAddress) | |
| metadonnee : [1..1] Metadonnee | **Patient****FrPatient** | meta : Meta [0..1] | |
| MembreCercleSoin | dateEntreeCercleSoin : [1..*] Date | **CareTeam****IHECareTeam** | participant [0..*].period[1..1].start : dateTime [0..1] |
| dateSortieCercleSoin : [0..*] Date | **CareTeam****IHECareTeam** | participant [0..*].period[1..1].end : dateTime [0..1] | |
| SituationExercice : [0..1]7 | **CareTeam****IHECareTeam** | participant[0..*].member :Reference [1..1](Practitioner|PractitionerRole| RelatedPerson|Patient|Organization|CareTeam) | |
| EntiteGeographique : [0..1]7 | | | |
| OrganisationInterne : [0..1]7 | | | |
| Contact : [0..1]7 | | | |
| Contact | idMembreCercleSoin : [1..1] Identifier | **RelatedPerson****FrRelatedPerson** | id : Id [0..1] |
| telecommunication : [1..*] Telecommunication | **RelatedPerson****FrRelatedPerson** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Address | **RelatedPerson****FrRelatedPerson** | address : FrAddress [0..*] | |
| role : [1..1] Code | **RelatedPerson****FrRelatedPerson** | relationship : CodeableConcept [1..*]Slice « RolePerson », RelatedPerson.relationship.coding.system taking the value «https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass » | |
| description : [0..1] Text | **RelatedPerson****FrRelatedPerson** | text : Narrative [0..1] | |
| relation : [0..1] Code | **RelatedPerson****FrRelatedPerson** | relationship : CodeableConcept [1..*]Slice « RelatedPerson », RelatedPerson.relationship.coding.system taking the value «https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode» | |
| metadonnee : [1..1] Metadonnee | **RelatedPerson****FrRelatedPerson** | meta : Meta [0..1] | |
| PersonnePhysique | nomFamille : [1..1] Text | **RelatedPerson****FrRelatedPerson** | name[0..*].family : string [0..1] (FrHumanName) |
| prenom [0..1] Text | **RelatedPerson****FrRelatedPerson** | name[0..*].given : string [0..*] (FrHumanName) | |
| civilite [0..1] Code | **RelatedPerson****FrRelatedPerson** | name[0..*].prefix : string [0..1] (FrHumanName) | |
| SituationExercice | idMembreCercleSoin : [1..1] Identifier | **PractitionerRole****ASPractitionerRole** | id : Id [0..1] |
| telecommunication : [1..*] Telecommunication | **PractitionerRole****ASPractitionerRole** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Address | **PractitionerRole****ASPractitionerRole** | location[0..*].address : FrAddressExtended [0..1](LocationRASS) | |
| modeExercice : [0..1] Code | **PractitionerRole****ASPractitionerRole** | code : CodeableConcept [0..*]Slice « modeExercice » | |
| role : [0..1] Code | **PractitionerRole****ASPractitionerRole** | code : CodeableConcept [0..*] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **PractitionerRole****ASPractitionerRole** | mailboxMSS[0..*].value : string [0..1]Extension MailboxMSS | |
| metadonnee : [1..1] Metadonnee | **PractitionerRole****ASPractitionerRole** | meta : Meta [0..1] | |
| EntiteGeographique : [0..1][14] | **PractitionerRole****ASPractitionerRole** | organization : Reference [0..1] (Organization) | |
| xerciceProfessionnel | civiliteExercice : [0..1] Code | **Practitioner****AsPractitioner** | name[0..*].suffix : string [0..*] (FrHumanName) |
| nomExercice : [0..1] Text | **Practitioner****AsPractitioner** | name[0..*].family : string [0..1] (FrHumanName) | |
| prenomExercice : [0..1] Text | **Practitioner****AsPractitioner** | name[0..*].given : string [0..*] (FrHumanName) | |
| profession : [0..1] Code | **Practitioner****AsPractitioner** | qualification : CodeableConcept [0..*]* Slice « professionG15 »
* Slice « professionR94 »
* Slice « professionR95 »
* Slice « professionR291 »
 | |
| metadonnee : [1..1] Metadonnee | **Practitioner****AsPractitioner** | meta : Meta [0..1] | |
| Professionnel | idPP : [0..1] Identifier | **Practitioner****ASPractitioner** | identifier : Identifier [0..*] |
| typeIdNat_PP : [0..1] Code | **Practitioner****ASPractitioner** | identifier.type : CodeableConcept [1..1] | |
| metadonnee : [1..1] Metadonnee | **Practitioner****ASPractitioner** | meta : Meta [0..1] | |
| PersonnePhysique | civilite : [0..1] Code | **Practitioner****ASPractitioner** | name[0..*].prefix : string [0..1] (FrHumanName) |
| nomFamille : [0..1] Text | **Practitioner****ASPractitioner** | name[0..*].family : string [0..1] (FrHumanName) | |
| prenom : [0..*] Text | **Practitioner****ASPractitioner** | name[0..*].given : string [0..*] (FrHumanName) | |
| sexe : [0..1] Code | **Practitioner****ASPractitioner** | gender : code [0..1] | |
| langueParlee : [0..*] LangueParlee | **Practitioner****ASPractitioner** | communication : CodeableConcept [0..*] | |
| dateNaissance : [0..1] Date | **Practitioner****ASPractitioner** | birthDate : date [0..1] | |
| metadonnee : [1..1] Metadonnee | **Practitioner****ASPractitioner** | meta : Meta [0..1] | |
| EntiteGeographique | idMembreCercleSoin : [1..1] Identifier | **Organization****ASOrganization** | id : Id [0..1] |
| numFINESS : [0..1] Identifier | **Organization****ASOrganization** | identifier : Identifier [0..*] | |
| numSIRET : [0..1] Identifier | | | |
| identifiantEG : [0..1] Identifier | | | |
| idNat_struct : [0..1] Identifier | | | |
| telecommunication : [1..*] Telecommunication | **Organization****ASOrganization** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Address | **Organization****ASOrganization** | address : FrAddress [0..*] | |
| denominationEG : [0..1] Text | **Organization****ASOrganization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization****ASOrganization** | telecom : [0..*] FrContactPoint | |
| metadonnee : [1..1] Metadonnee | **Organization****ASOrganization** | meta : Meta [0..1] | |
| EntiteJuridique : [1..1] [17] | **Organization****ASOrganization** | partOf : Reference [0..1] (ASOrganization) | |
| EntiteJuridique | numFINESS : [0..1] Identifier | **Organization****ASOrganization** | identifier : Identifier [0..*] |
| numSIREN : [0..1] Identifier | | | |
| identifiantEJ : [0..1] Identifier | | | |
| idNat_struct : [0..1] Identifier | | | |
| raisonSociale : [0..1] Text | **Organization****ASOrganization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization****ASOrganization** | telecom : [0..*] FrContactPoint | |
| metadonnee : [1..1] Metadonnee | **Organization****ASOrganization** | meta : Meta [0..1] | |
| OrganisationInterne | idMembreCercleSoin : [1..1] Identifier | **Organization**[18] | id : Id [0..1] |
| identifiantOI : [0..1] Identifier | **Organization** | identifier : Identifier [0..*] | |
| telecommunication : [1..*] Telecommunication | **Organization** | telecom : ContactPoint [0..*] | |
| adresse : [0..*] Address | **Organization** | address : Address [0..*] | |
| nom : [0..1] Text | **Organization** | name : string [0..1] | |
| boiteLettresMSS : [0..*] BoiteLettreMSS | **Organization** | mailboxMSS[0..*].value : string [0..1]Extension MailboxMSS (rass) | |
| metadonnee : [1..1] Metadonnee | **Organization** | meta : Meta [0..1] | |
| EntiteGeographique : [1..1]9 | **Organization** | partOf : reference [0..1] (Organization) | |

Table 4 Mapping of business contents / standard of flow 1

### Flow 2: Search for care circles

Flow 2 - RechercheCercleSoins contains the criteria for searching for one or more care circle(s).

| | | |
| :--- | :--- | :--- |
| CercleSoins/idCercleSoins | CareTeam | identifier : token |
| CercleSoins/dateCreation | **No match****Search parameter created as part of this section: start** | |
| CercleSoins/dateFin | **No match****Search parameter created as part of this section: end** | |
| CercleSoins/statut | status : token | |
| CercleSoins/dateMAJ | Meta | _lastUpdated : date |
| MembreCercleSoin/dateEntréeCercleSoin | CareTeam | **No match****Search parameter created as part of this section: participant-start** |
| MembreCercleSoin/dateSortieCercleSoin | **No match****Search parameter created as part of this section: participant-end** | |
| PersonnePriseCharge/idPersonnePriseCharge | Patient | identifier : token |
| PersonnePriseCharge/adresseCorrespondance | address : string | |
| PersonnePhysique/nomFamille | family : string | |
| PersonnePhysique/prenom | given : string | |
| PersonnePhysique/dateNaissance | birthdate : date | |
| PersonnePhysique/lieuNaissance | **No match****Search parameter created as part of this section : birthplace** | |
| PersonnePhysique/sexe | gender : token | |
| MembreCercleSoin/idMembreCercleSoin | RelatedPerson | _id : token |
| PersonnePhysique/nomFamille | name : string | |
| Contact/role | relationship : token | |
| MembreCercleSoin/idMembreCercleSoin | PractitionerRole | _id : token |
| ExerciceProfessionnel/profession | role : token | |
| ExerciceProfessionnel/nomExercice | **No match****Search parameter created as part of this section : nameex** | |
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

