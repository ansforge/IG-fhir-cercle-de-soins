Dans cette section, la mise en correspondance est faite entre :

* Les objets métier identifiés à l’issue des spécifications fonctionnelles des échanges,
* Les ressources du standard HL7 FHIR.

Pour chaque objet métier, les tableaux ci-dessous reprennent l’ensemble des éléments métier identifiés dans l’étude métier du cas d’usage. Pour chaque attribut de chaque classe métier, la ressource FHIR et plus particulièrement l’élément de cette ressource utilisé pour véhiculer l’information est identifié. Lorsqu’un profil existant est identifié, les caractéristiques de l’élément FHIR de ce profil sont rapportées (par exemple IHECareTeam ou encore FrPatient).

### Flux 1 : Création d’un cercle de soins

Le flux 1 - CreationCercleSoins contient les informations relatives à la création d’un cercle de soins.

<table>
<thead>
<tr class="header">
<th colspan="2">Éléments métier</th>
<th colspan="2">Éléments correspondant dans les profils FHIR</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Nom classe</strong></td>
<td><strong>Nom attribut</strong></td>
<td><strong>Ressource</strong></td>
<td><strong>Elément</strong></td>
</tr>
<tr class="even">
<td rowspan="8">CercleSoins</td>
<td>idCercleSoins : [1..1] Identifiant</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>identifier : Identifier [1..*]</td>
</tr>
<tr class="odd">
<td>dateCreation : [1..1] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>period[1..1].start : dateTime [1..1]</td>
</tr>
<tr class="even">
<td>dateMAJ : [1..*] Date[10]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>meta[0..1].lastUpdated : instant [0..1]</td>
</tr>
<tr class="odd">
<td>dateFin : [0..1] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>period[1..1].end : dateTime [0..1]</td>
</tr>
<tr class="even">
<td>statut : [0..1] code</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>status : code [1..1]</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>PersonnePriseCharge : [1..1][11]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>subject : Reference [1..1] (Patient)</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin : [0..*][12]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant : BackboneElement [0..*]</td>
</tr>
<tr class="even">
<td rowspan="5">PersonnePriseCharge</td>
<td><p>INS : [1..1] INS[13]</p>
<ul>
<li><p>matriculeINS : [1..1] Identifiant</p></li>
<li><p>nomFamille : [1..1] Texte</p></li>
<li><p>prenomActeNaissance : [1..1] Texte</p></li>
<li><p>premierPrenomActeNaissance : [1..1] Texte</p></li>
<li><p>nomUtilise : [1..1] Texte</p></li>
<li><p>prenomUtilise : [1..1] Texte</p></li>
<li><p>sexe : [1..1] Code</p>
<p>dateNaissance : [1..1] DateHeure</p></li>
<li><p>lieuNaissance : [1..1] Texte</p></li>
</ul></td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><ul>
<li><p>Identifier : Identifier [0..*]</p></li>
<li><blockquote>
<p>Slice « INS-NIR »</p>
</blockquote></li>
<li><blockquote>
<p>Slice « INS-NIA »</p>
</blockquote></li>
<li><blockquote>
<p>Slice « INS-C »</p>
</blockquote></li>
<li><p>name[1..*].family : string [1..1] (FrHumanName)</p></li>
<li><p>name[1..*].text : string [0..1] (FrHumanName)</p></li>
<li><p>name[1..*].given : string [1..1] (FrHumanName)</p>
<p>Slice officialName, Patient.name.use prenant la valeur « official »)</p></li>
<li><p>name[1..*].family : string [0..1] (FrHumanName)</p></li>
<li><p>name[1..*].given : string [0..*] (FrHumanName)</p>
<p>Slice usualName, Patient.name.use prenant la valeur « usual »</p></li>
<li><p>gender : code [1..1]</p></li>
<li><p>birthDate : date [1..1]</p></li>
<li><p>birthPlace : Extension(Address) [0..1] Extension (BirthPlace)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>idPersonnePriseCharge : [0..*] Identifiant</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td>adresseCorrespondance : [1..1] Adresse</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="odd">
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td rowspan="10">PersonnePhysique</td>
<td>civilite : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].prefix : string [0..1] (FrHumanName)</p>
<p>Slice « officialName », Patient.name.use prenant la valeur « official »</p></td>
</tr>
<tr class="even">
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].family : string [0..1] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td>
</tr>
<tr class="odd">
<td>prenom : [0..*] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].given : string [0..*] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td>
</tr>
<tr class="even">
<td>sexe : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>gender : code [1..1]</td>
</tr>
<tr class="odd">
<td>langueParlee : [0..*] LangueParlee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>communication[0..*].language : CodeableConcept [1..1]</td>
</tr>
<tr class="even">
<td>situationFamiliale : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>maritalStatus : CodeableConcept [0..1]</td>
</tr>
<tr class="odd">
<td>dateNaissance : [0..1] Date</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>birthDate : date [1..1]</td>
</tr>
<tr class="even">
<td>lieuNaissance : [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>birthPlace : Extension(Address) [0..1]</p>
<p>Extension BirthPlace</p></td>
</tr>
<tr class="odd">
<td>paysResidence : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>address[0..*].country : string [0..1] (FrAddress)</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td rowspan="6">MembreCercleSoin</td>
<td>dateEntreeCercleSoin : [1..*] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant [0..*].period[1..1].start : dateTime [0..1]</td>
</tr>
<tr class="even">
<td>dateSortieCercleSoin : [0..*] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant [0..*].period[1..1].end : dateTime [0..1]</td>
</tr>
<tr class="odd">
<td>SituationExercice : [0..1]<sup>7</sup></td>
<td rowspan="4"><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td rowspan="4"><p>participant[0..*].member :Reference [1..1]</p>
<p>(Practitioner|PractitionerRole| RelatedPerson|Patient|Organization|CareTeam)</p></td>
</tr>
<tr class="even">
<td>EntiteGeographique : [0..1] <sup>7</sup></td>
</tr>
<tr class="odd">
<td>OrganisationInterne : [0..1] <sup>7</sup></td>
</tr>
<tr class="even">
<td>Contact : [0..1] <sup>7</sup></td>
</tr>
<tr class="odd">
<td rowspan="7">Contact</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>id : Id [0..1]</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td>adresse : [0..*] Adresse</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="even">
<td>role : [1..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td><p>relationship : CodeableConcept [1..*]</p>
<p>Slice « RolePerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass »</p></td>
</tr>
<tr class="odd">
<td>description : [0..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>text : Narrative [0..1]</td>
</tr>
<tr class="even">
<td>relation : [0..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td><p>relationship : CodeableConcept [1..*]</p>
<p>Slice « RelatedPerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode»</p></td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td rowspan="3">PersonnePhysique</td>
<td>nomFamille : [1..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr class="odd">
<td>prenom [0..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].given : string [0..*] (FrHumanName)</td>
</tr>
<tr class="even">
<td>civilite [0..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].prefix : string [0..1] (FrHumanName)</td>
</tr>

<!-- SITEX -->
<tr class="odd">
<td rowspan="8">SituationExercice</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td>id : Id [0..1]</td>
</tr>

<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td>adresse : [0..*] Adresse</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td><p>location[0..*].address : FrAddressExtended [0..1]</p>
<p>(LocationRASS)</p></td>
</tr>
<tr class="even">
<td>modeExercice : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td><p>code : CodeableConcept [0..*]</p>
<p>Slice « modeExercice »</p></td>
</tr>
<tr class="odd">
<td>role : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td>code : CodeableConcept [0..*]</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td><p>mailboxMSS[0..*].value : string [0..1]</p>
<p>Extension MailboxMSS</p></td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>EntiteGeographique : [0..1][14]</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>ASPractitionerRole</em></p></td>
<td>organization : Reference [0..1] (Organization)</td>
</tr>

<!-- expro -->
<tr class="even">
<td rowspan="5">xerciceProfessionnel</td>
<td>civiliteExercice : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>AsPractitioner</em></p></td>
<td><p>name[0..*].suffix : string [0..*] (FrHumanName)</p></td>
</tr>
<tr class="odd">
<td>nomExercice : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>AsPractitioner</em></p></td>
<td><p>name[0..*].family : string [0..1] (FrHumanName)</p></td>
</tr>
<tr class="even">
<td>prenomExercice : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>AsPractitioner</em></p></td>
<td><p>name[0..*].given : string [0..*] (FrHumanName)</p></td>
</tr>
<tr class="odd">
<td>profession : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>AsPractitioner</em></p></td>
<td><p>qualification : CodeableConcept [0..*]</p>
<ul>
<li><p>Slice « professionG15 »</p></li>
<li><p>Slice « professionR94 »</p></li>
<li><p>Slice « professionR95 »</p></li>
<li><p>Slice « professionR291 »</p></li>
</ul></td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>AsPractitioner</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>


<!-- professionnel -->

<tr class="even">
<td rowspan="3">Professionnel</td>
<td>idPP : [0..1] Identifiant</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="odd">
<td>typeIdNat_PP : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>identifier.type : CodeableConcept [1..1]</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td rowspan="7">PersonnePhysique</td>
<td>civilite : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>name[0..*].prefix : string [0..1] (FrHumanName)</td>
</tr>
<tr class="even">
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr class="odd">
<td>prenom : [0..*] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>name[0..*].given : string [0..*] (FrHumanName)</td>
</tr>
<tr class="even">
<td>sexe : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>gender : code [0..1]</td>
</tr>
<tr class="odd">
<td>langueParlee : [0..*] LangueParlee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>communication : CodeableConcept [0..*]</td>
</tr>
<tr class="even">
<td>dateNaissance : [0..1] Date</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>birthDate : date [0..1]</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>ASPractitioner</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td rowspan="11">EntiteGeographique</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>id : Id [0..1]</td>
</tr>
<tr class="odd">
<td>numFINESS : [0..1] Identifiant</td>
<td rowspan="4"><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td rowspan="4">identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td>numSIRET : [0..1] Identifiant</td>
</tr>
<tr class="odd">
<td>identifiantEG : [0..1] Identifiant</td>
</tr>
<tr class="even">
<td>idNat_struct : [0..1] Identifiant</td>
</tr>
<tr class="odd">
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="even">
<td>adresse : [0..*] Adresse</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="odd">
<td>denominationEG : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>telecom : [0..*] FrContactPoint</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>EntiteJuridique : [1..1] [17]</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>partOf : Reference [0..1] (ASOrganization)</td>
</tr>
<tr class="odd">
<td rowspan="7">EntiteJuridique</td>
<td>numFINESS : [0..1] Identifiant</td>
<td rowspan="4"><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td rowspan="4">identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td>numSIREN : [0..1] Identifiant</td>
</tr>
<tr class="odd">
<td>identifiantEJ : [0..1] Identifiant</td>
</tr>
<tr class="even">
<td>idNat_struct : [0..1] Identifiant</td>
</tr>
<tr class="odd">
<td>raisonSociale : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>telecom : [0..*] FrContactPoint</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Organization</strong></p>
<p><em>ASOrganization</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td rowspan="8">OrganisationInterne</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><strong>Organization</strong>[18]</td>
<td>id : Id [0..1]</td>
</tr>
<tr class="odd">
<td>identifiantOI : [0..1] Identifiant</td>
<td><strong>Organization</strong></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td><strong>Organization</strong></td>
<td>telecom : ContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td>adresse : [0..*] Adresse</td>
<td><strong>Organization</strong></td>
<td>address : Address [0..*]</td>
</tr>
<tr class="even">
<td>nom : [0..1] Texte</td>
<td><strong>Organization</strong></td>
<td>name : string [0..1]</td>
</tr>
<tr class="odd">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><strong>Organization</strong></td>
<td><p>mailboxMSS[0..*].value : string [0..1]</p>
<p>Extension MailboxMSS (rass)</p></td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td><strong>Organization</strong></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td>EntiteGeographique : [1..1]<sup>9</sup></td>
<td><strong>Organization</strong></td>
<td>partOf : reference [0..1] (Organization)</td>
</tr>
</tbody>
</table>

Tableau 4 Mise en correspondance des contenus métier / standard du flux 1

### Flux 2 : Recherche de cercles de soins

Le flux 2 - RechercheCercleSoins contient les critères pour rechercher un ou plusieurs cercle(s) de soins.

<table>
<thead>
<tr class="header">
<th>Critère de recherche</th>
<th>Ressource FHIR</th>
<td>Paramètre de recherche FHIR</td>
<th></th>
</tr>
</thead>
<tbody>
<tr class="even">
<td>CercleSoins/idCercleSoins</td>
<td rowspan="4">CareTeam</td>
<td>identifier : token</td>
</tr>
<tr class="odd">
<td>CercleSoins/dateCreation</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : start</em></p></td>
</tr>
<tr class="even">
<td>CercleSoins/dateFin</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : end</em></p></td>
</tr>
<tr class="odd">
<td>CercleSoins/statut</td>
<td>status : token</td>
</tr>
<tr class="even">
<td>CercleSoins/dateMAJ</td>
<td>Meta</td>
<td>_lastUpdated : date</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin/dateEntréeCercleSoin</td>
<td rowspan="2">CareTeam</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet: participant-start</em></p></td>
</tr>
<tr class="even">
<td>MembreCercleSoin/dateSortieCercleSoin</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet: participant-end</em></p></td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge/idPersonnePriseCharge</td>
<td rowspan="7">Patient</td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>PersonnePriseCharge/adresseCorrespondance</td>
<td>address : string</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/nomFamille</td>
<td>family : string</td>
</tr>
<tr class="even">
<td>PersonnePhysique/prenom</td>
<td>given : string</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/dateNaissance</td>
<td>birthdate : date</td>
</tr>
<tr class="even">
<td>PersonnePhysique/lieuNaissance</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : birthplace</em></p></td>
</tr>
<tr class="odd">
<td>PersonnePhysique/sexe</td>
<td>gender : token</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td rowspan="3">RelatedPerson</td>
<td>_id : token</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/nomFamille</td>
<td>name : string</td>
</tr>
<tr class="even">
<td>Contact/role</td>
<td>relationship : token</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td rowspan="4">PractitionerRole</td>
<td>_id : token</td>
</tr>
<tr class="even">
<td>ExerciceProfessionnel/profession</td>
<td>role : token</td>
</tr>
<tr class="odd">
<td>ExerciceProfessionnel/nomExercice</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : nameex</em></p></td>
</tr>
<tr class="even">
<td>SituationExercice/role</td>
<td>role : token</td>
</tr>
<tr class="odd">
<td>Professionnel/idPP</td>
<td>Practitioner</td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td rowspan="13">Organization</td>
<td>_id : token</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/identifiantEG</td>
<td rowspan="4">identifier : token</td>
</tr>
<tr class="even">
<td>EntiteGeographique/numFINESS</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/numSIRET</td>
</tr>
<tr class="even">
<td>EntiteGeographique/idNat_struct</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/identifiantEJ</td>
<td rowspan="4">identifier : token</td>
</tr>
<tr class="even">
<td>EntiteJuridique/numFINESS</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/numSIREN</td>
</tr>
<tr class="even">
<td>EntiteJuridique/idNat_struct</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/denominationEG</td>
<td>name : string</td>
</tr>
<tr class="even">
<td>OrganisationInterne/identifiantOI</td>
<td>identifier : token</td>
</tr>
<tr class="odd">
<td>OrganisationInterne/nom</td>
<td>name : string</td>
</tr>
<tr class="even">
<td>EntiteJuridique/raisonSociale</td>
<td>name : string</td>
</tr>
</tbody>
</table>

Tableau 5 Mise en correspondance des contenus métier / standard du flux 2

