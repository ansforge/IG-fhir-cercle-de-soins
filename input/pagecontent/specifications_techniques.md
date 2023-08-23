# Introduction

Ce document présente les spécifications techniques d’interopérabilité nécessaires à la mise en œuvre du volet « Gestion du Cercle de Soins ».

Sa production est basée sur les Spécifications Fonctionnelles des Echanges (SFE) du volet « Gestion du Cercle de Soins » \[1\] et sur le profil DCTM (Dynamic Care Team Management, Rev. 2.0, 31/12/2019) \[2\] défini par IHE (Integrating the Healthcare Entreprise) et identifié dans l’étude des normes et standards du présent volet.

Le tableau de synthèse des flux issu de la SFE est rappelé ci-dessous :

| Flux                                  | Processus                       | Emetteur     | Récepteur    | Périmètre |
| ------------------------------------- | ------------------------------- | ------------ | ------------ | --------- |
| Flux 1 - CreationCercleSoins          | Création du cercle de soins     | Créateur     | Gestionnaire | Oui       |
| Flux 2 - RechercheCercleSoins         | Consultation du cercle de soins | Consommateur | Gestionnaire | Oui       |
| Flux 3 - ResultatRechercheCercleSoins | Consultation du cercle de soins | Gestionnaire | Consommateur | Oui       |
| Flux 4 - MiseJourCercleSoins          | Mise à jour du cercle de soins  | Créateur     | Gestionnaire | Oui       |

Tableau 1 Synthèse des flux issue de la SFE

L’approche technique qui sera présentée dans la troisième partie de ce document (Construction des flux) nous pousse à dissocier certains flux issus des SFE.

L’ensemble des flux est décrit dans le tableau suivant :

| Flux métier                           | Flux décrits dans la partie 3             | Commentaire                                                                                                                                                                            |
| ------------------------------------- | ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Flux 1 - CreationCercleSoins          | Flux 1a - CreationActeurRestful           | Ces deux flux ont été dissociés pour séparer la création des acteurs de la création des cercles de soins dans l’option de construction Restful.                                        |
|                                       | Flux 1b - CreationCercleSoinsRestful      |                                                                                                                                                                                        |
|                                       | Flux 1c – CreationCercleSoinsTransaction  | Ce flux a été dissocié des flux 1a et 1b car il correspond à la création d’un cercle de soins dans l’option de construction Transaction                                                |
|                                       |                                           |                                                                                                                                                                                        |
| Flux 2 - RechercheCercleSoins         | Flux 2a - RechercheCercleSoins            | Ces flux ont été dissociés de manière à distinguer la recherche de cercles de soins répondant à des critères définis de la demande de la récupération d’un cercle de soins particulier |
|                                       | Flux 2b - RecuperationCercleSoins         |                                                                                                                                                                                        |
| Flux 3 - ResultatRechercheCercleSoins | Flux 3a - ResultatRechercheCercleSoins    | Réponse au flux 2a                                                                                                                                                                     |
|                                       | Flux 3b - ResultatRecuperationCercleSoins | Réponse au flux 2b                                                                                                                                                                     |
| Flux 4 - MiseJourCercleSoins          | Flux 4a - MiseJourActeurRestful           | Ces deux flux ont été dissociés pour séparer la mise à jour des acteurs de la mise à jour des cercles de soins dans l’option de construction Restful.                                  |
|                                       | Flux 4b - MiseJourCercleSoinsRestful      |                                                                                                                                                                                        |
|                                       | Flux 4c – MAJCercleSoinsTransaction       | Ce flux a été dissocié pour séparer les mises à jour dans l’option de construction Transaction                                                                                         |

Tableau 2 Synthèse des flux

## Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4, et plus particulièrement sur les contraintes spécifiées par le profil DCTM version 2.0\[3\]. Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basées sur le protocole HTTP. L’hypothèse est faite que le lecteur est familier avec ces standards. La syntaxe retenue est la syntaxe JSON, la syntaxe XML est optionnelle.

Ressources FHIR utilisées

Les ressources utilisées et leurs niveaux de maturité sont les suivants :

  - CareTeam (NM 2)

  - Patient (NM N)

  - RelatedPerson (NM 2)

  - Practitioner (NM 3)

  - PractitionerRole (NM 2)

  - Organization (NM 3)

  - Bundle (NM N)

### Profils utilisés

Des ressources FHIR ont été profilées pour le contexte français et sont utilisés dans le cadre des spécifications techniques du volet « Gestion du Cercle de Soins ».

Deux sources seront utilisées dans le cadre de ce volet :

  - Les profils FHIR « FrPatient », « FrPractitioner », « FrOrganization » et « FrRelatedPerson » publiés par HL7 France sont utilisés dans ce volet. Les présentes spécifications se basent sur les profils du package hl7.fhir.fr.core 1.1.0 \[4\]

  - Dans le cadre de l’annuaire santé, l’ANS met à disposition un service national de publication des données des professionnels et des structures au format FHIR\[5\]\[6\] ; deux profils de l’annuaire santé, à savoir « PractitionerRoleProfessionalRoleRASS », « PractitionerRoleOrganizationalRoleRASS » sont utilisés pour le cas d’usage du cercle de soins. Les présentes spécifications se basent sur les profils du package *ANS.annuaire.fhir.r4 0.2.0*\[7\].

Le tableau ci-dessous liste les profils utilisés pour les ressources et types de données mentionnés dans ce document, y compris les profils définis spécialement pour le volet Cercle de Soins (suffixe CDS). Pour les ressources et types de données non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

<table>
<thead>
<tr class="header">
<th>Ressource</th>
<th>Profil</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CareTeam</td>
<td><p>CDS_IHECareTeam</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet héritant du profil décrit dans DCTM.</td>
</tr>
<tr class="even">
<td>Patient</td>
<td><p><a href="https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424014">FrPatient</a></p>
<p>Package hl7.fhir.fr.core 1.1.0</p></td>
<td>Profil français qui spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales et ajoute des extensions propres à la France.</td>
</tr>
<tr class="odd">
<td>Organization</td>
<td><p><a href="https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424025">FrOrganization</a></p>
<p>Package hl7.fhir.fr.core 1.1.0</p></td>
<td>Profil français pour les entités géographiques et entités juridiques.</td>
</tr>
<tr class="even">
<td></td>
<td><p>CDS_Organization-OrgaInt</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet héritant de la ressource FHIR pour les organisations internes.</td>
</tr>
<tr class="odd">
<td>Practitioner</td>
<td><p><a href="https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424009">FrPractitioner</a></p>
<p>Package hl7.fhir.fr.core 1.1.0</p></td>
<td>Profil français qui contraint les types d'identifiants du professionnel en France.</td>
</tr>
<tr class="even">
<td>PractitionerRole</td>
<td><p><a href="https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0/files/421732">PractitionerRoleOrganizationalRoleRASS </a></p>
<p>Package <em>ANS.annuaire.fhir.r4 0.2.0</em></p></td>
<td>Profil de l’annuaire santé pour la situation d’exercice.</td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0/files/421688">PractitionerRoleProfessionalRoleRASS</a></p>
<p>Package <em>ANS.annuaire.fhir.r4 0.2.0</em></p></td>
<td>Profil de l’annuaire santé pour l’exercice professionnel.</td>
</tr>
<tr class="even">
<td>RelatedPerson</td>
<td><p>CDS_FrRelatedPerson</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet héritant du profil français <a href="https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424003">FrRelatedPerson</a> issue du package hl7.fhir.fr.core 1.1.0.</td>
</tr>
<tr class="odd">
<td>Bundle</td>
<td><p>CDS_BundleTransactionCreation</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet (flux 1c) pour créer un cercle de soins selon l’option Transaction.</td>
</tr>
<tr class="even">
<td></td>
<td><p>CDS_BundleTransactionMAJ</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet (flux4c) pour mettre à jour un cercle de soins selon l’option Transaction.</td>
</tr>
<tr class="odd">
<td></td>
<td><p>CDS_BundleResponseRecherche</p>
<p>Package ans.cisis.fhir.r4 2.1.1</p></td>
<td>Profil défini dans ce volet pour répondre à la recherche de cercles de soins</td>
</tr>
</tbody>
</table>

Tableau 3 Profils utilisés pour les ressources

**<span class="underline">Note éditoriale :</span>**

Dans l’ensemble de ce document, lorsqu’il est fait référence aux ressources Patient, Practitioner et Organization, il est entendu que le profil français (respectivement FrPatient , FrPractitioner et FrOrganization) doit être utilisé.

De même, lorsqu’il est fait référence à la ressource PractitionerRole, les profils français « PractitionerRoleProfessionalRoleRASS », « PractitionerRoleOrganizationalRoleRASS » doivent être utilisés.

## Scénarios d’implémentation

Le schéma d’urbanisation de la gestion du cercle de soins peut être centralisé ou distribué :

  - Les cercles de soins des usagers peuvent être stockés et gérés de manière centralisée par un système unique identifié comme gestionnaire du cercle de soins au niveau national ou régional par exemple.

  - Les cercles de soins des usagers peuvent être stockés et gérés de manière distribuée. Plusieurs systèmes peuvent ainsi jouer le rôle de gestionnaire du cercle de soins dans un territoire donné. Dans ce cas, des mécanismes d’identification des gestionnaires et des cercles de soins qu’ils gèrent et éventuellement de synchronisation entre eux doivent être mis en place.
    
    Ces spécifications d’interopérabilité s’appliquent quel que soit le schéma d’urbanisation adopté.

# Contenu structuré des flux

## Correspondance entre objets métier et objets du standard HL7 FHIR

Dans cette section, la mise en correspondance est faite entre :

  - Les objets métier identifiés à l’issue des spécifications fonctionnelles des échanges,

  - Les ressources du standard HL7 FHIR.

Pour chaque objet métier, les tableaux ci-dessous reprennent l’ensemble des éléments métier identifiés dans l’étude métier du cas d’usage. Pour chaque attribut de chaque classe métier, la ressource FHIR et plus particulièrement l’élément de cette ressource utilisé pour véhiculer l’information est identifié. Lorsqu’un profil existant est identifié, les caractéristiques de l’élément FHIR de ce profil sont rapportées (par exemple IHECareTeam ou encore FrPatient).

### Flux 1 : Création d’un cercle de soins

Le flux 1 - CreationCercleSoins contient les informations relatives à la création d’un cercle de soins.

<table>
<thead>
<tr class="header">
<th>Éléments métier</th>
<th>Éléments FHIR des profils FHIR identifiés</th>
<th></th>
<th></th>
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
<td>CercleSoins</td>
<td>idCercleSoins : [1..1] Identifiant</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>identifier : Identifier [1..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>dateCreation : [1..1] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>period[1..1].start : dateTime [1..1]</td>
</tr>
<tr class="even">
<td></td>
<td>dateMAJ : [1..*] Date[10]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>meta[0..1].lastUpdated : instant [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>dateFin : [0..1] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>period[1..1].end : dateTime [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>statut : [0..1] code</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>status : code [1..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>PersonnePriseCharge : [1..1][11]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>subject : Reference [1..1] (Patient)</td>
</tr>
<tr class="odd">
<td></td>
<td>MembreCercleSoin : [0..*][12]</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant : BackboneElement [0..*]</td>
</tr>
<tr class="even">
<td>PersonnePriseCharge</td>
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
<td></td>
<td>idPersonnePriseCharge : [0..*] Identifiant</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>adresseCorrespondance : [1..1] Adresse</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td>PersonnePhysique</td>
<td>civilite : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].prefix : string [0..1] (FrHumanName)</p>
<p>Slice « officialName », Patient.name.use prenant la valeur « official »</p></td>
</tr>
<tr class="even">
<td></td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].family : string [0..1] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td>
</tr>
<tr class="odd">
<td></td>
<td>prenom : [0..*] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].given : string [0..*] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td>
</tr>
<tr class="even">
<td></td>
<td>sexe : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>gender : code [1..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>langueParlee : [0..*] LangueParlee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>communication[0..*].language : CodeableConcept [1..1]</td>
</tr>
<tr class="even">
<td></td>
<td>situationFamiliale : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>maritalStatus : CodeableConcept [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>dateNaissance : [0..1] Date</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>birthDate : date [1..1]</td>
</tr>
<tr class="even">
<td></td>
<td>lieuNaissance : [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>birthPlace : Extension(Address) [0..1]</p>
<p>Extension BirthPlace</p></td>
</tr>
<tr class="odd">
<td></td>
<td>paysResidence : [0..1] Code</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>address[0..*].country : string [0..1] (FrAddress)</td>
</tr>
<tr class="even">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin</td>
<td>dateEntreeCercleSoin : [1..*] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant [0..*].period[1..1].start : dateTime [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>dateSortieCercleSoin : [0..*] Date</td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td>participant [0..*].period[1..1].end : dateTime [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>SituationExercice : [0..1]<sup>7</sup></td>
<td><p><strong>CareTeam</strong></p>
<p><em>IHECareTeam</em></p></td>
<td><p>participant[0..*].member :Reference [1..1]</p>
<p>(Practitioner|PractitionerRole| RelatedPerson|Patient|Organization|CareTeam)</p></td>
</tr>
<tr class="even">
<td></td>
<td>EntiteGeographique : [0..1] <sup>7</sup></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>OrganisationInterne : [0..1] <sup>7</sup></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Contact : [0..1] <sup>7</sup></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Contact</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>id : Id [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>adresse : [0..*] Adresse</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>role : [1..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td><p>relationship : CodeableConcept [1..*]</p>
<p>Slice « RolePerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass »</p></td>
</tr>
<tr class="odd">
<td></td>
<td>description : [0..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>text : Narrative [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>relation : [0..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td><p>relationship : CodeableConcept [1..*]</p>
<p>Slice « RelatedPerson », RelatedPerson.relationship.coding.system prenant la valeur «https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode»</p></td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>PersonnePhysique</td>
<td>nomFamille : [1..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr class="odd">
<td></td>
<td>prenom [0..1] Texte</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].given : string [0..*] (FrHumanName)</td>
</tr>
<tr class="even">
<td></td>
<td>civilite [0..1] Code</td>
<td><p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name[0..*].prefix : string [0..1] (FrHumanName)</td>
</tr>
<tr class="odd">
<td>SituationExercice</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td>id : Id [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>adresse : [0..*] Adresse</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td><p>location[0..*].address : FrAddressExtended [0..1]</p>
<p>(LocationRASS)</p></td>
</tr>
<tr class="even">
<td></td>
<td>modeExercice : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td><p>code : CodeableConcept [0..*]</p>
<p>Slice « modeExercice »</p></td>
</tr>
<tr class="odd">
<td></td>
<td>role : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td>code : CodeableConcept [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td><p>mailboxMSS[0..*].value : string [0..1]</p>
<p>Extension MailboxMSS</p></td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>EntiteGeographique : [0..1][14]</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td>organization : Reference [0..1] (Organization)</td>
</tr>
<tr class="odd">
<td></td>
<td>ExerciceProfessionnel : [1..1][15]</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleOrganizationalRoleRASS</em></p></td>
<td><p>partOf : Reference [1..1] (PractitionerRole)</p>
<p>Extension PractitionerRolePartOf</p></td>
</tr>
<tr class="even">
<td>ExerciceProfessionnel</td>
<td>civiliteExercice : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td><p>name[0..*].suffix : string [0..*] (FrHumanName)</p>
<p>Extension PractitionerRoleName</p></td>
</tr>
<tr class="odd">
<td></td>
<td>nomExercice : [0..1] Texte</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td><p>name[0..*].family : string [0..1] (FrHumanName)</p>
<p>Extension PractitionerRoleName</p></td>
</tr>
<tr class="even">
<td></td>
<td>prenomExercice : [0..1] Texte</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td><p>name[0..*].given : string [0..*] (FrHumanName)</p>
<p>Extension PractitionerRoleName</p></td>
</tr>
<tr class="odd">
<td></td>
<td>profession : [0..1] Code</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td><p>code : CodeableConcept [0..*]</p>
<ul>
<li><p>Slice « professionG15 »</p></li>
<li><p>Slice « professionR94 »</p></li>
<li><p>Slice « professionR95 »</p></li>
<li><p>Slice « professionR291 »</p></li>
</ul></td>
</tr>
<tr class="even">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>Professionnel : [1..1] [16]</td>
<td><p><strong>PractitionerRole</strong></p>
<p><em>PractitionerRoleProfessionalRoleRASS</em></p></td>
<td>practitioner : Reference [1..1] (Practitioner)</td>
</tr>
<tr class="even">
<td>Professionnel</td>
<td>idPP : [0..1] Identifiant</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>typeIdNat_PP : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>identifier.type : CodeableConcept [1..1]</td>
</tr>
<tr class="even">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td>PersonnePhysique</td>
<td>civilite : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>name[0..*].prefix : string [0..1] (FrHumanName)</td>
</tr>
<tr class="even">
<td></td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr class="odd">
<td></td>
<td>prenom : [0..*] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>name[0..*].given : string [0..*] (FrHumanName)</td>
</tr>
<tr class="even">
<td></td>
<td>sexe : [0..1] Code</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>gender : code [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>langueParlee : [0..*] LangueParlee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>communication : CodeableConcept [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>dateNaissance : [0..1] Date</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>birthDate : date [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>EntiteGeographique</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>id : Id [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>numFINESS : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>numSIRET : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>identifiantEG : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>idNat_struct : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>telecommunication : [1..*] Telecommunication</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>adresse : [0..*] Adresse</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>denominationEG : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>telecom : [0..*] FrContactPoint</td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>EntiteJuridique : [1..1] [17]</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>partOf : Reference [0..1] (FrOrganization)</td>
</tr>
<tr class="odd">
<td>EntiteJuridique</td>
<td>numFINESS : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>numSIREN : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>identifiantEJ : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>idNat_struct : [0..1] Identifiant</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>raisonSociale : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr class="even">
<td></td>
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>telecom : [0..*] FrContactPoint</td>
</tr>
<tr class="odd">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="even">
<td>OrganisationInterne</td>
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td><strong>Organization</strong>[18]</td>
<td>id : Id [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>identifiantOI : [0..1] Identifiant</td>
<td><strong>Organization</strong></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>telecommunication : [1..*] Telecommunication</td>
<td><strong>Organization</strong></td>
<td>telecom : ContactPoint [0..*]</td>
</tr>
<tr class="odd">
<td></td>
<td>adresse : [0..*] Adresse</td>
<td><strong>Organization</strong></td>
<td>address : Address [0..*]</td>
</tr>
<tr class="even">
<td></td>
<td>nom : [0..1] Texte</td>
<td><strong>Organization</strong></td>
<td>name : string [0..1]</td>
</tr>
<tr class="odd">
<td></td>
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td><strong>Organization</strong></td>
<td><p>mailboxMSS[0..*].value : string [0..1]</p>
<p>Extension MailboxMSS (rass)</p></td>
</tr>
<tr class="even">
<td></td>
<td>metadonnee : [1..1] Metadonnee</td>
<td><strong>Organization</strong></td>
<td>meta : Meta [0..1]</td>
</tr>
<tr class="odd">
<td></td>
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
<th>Paramètre FHIR</th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>Ressource</td>
<td>Paramètre de recherche</td>
</tr>
<tr class="even">
<td>CercleSoins/idCercleSoins</td>
<td>CareTeam</td>
<td>identifier : token</td>
</tr>
<tr class="odd">
<td>CercleSoins/dateCreation</td>
<td></td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : start</em></p></td>
</tr>
<tr class="even">
<td>CercleSoins/dateFin</td>
<td></td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : end</em></p></td>
</tr>
<tr class="odd">
<td>CercleSoins/statut</td>
<td></td>
<td>status : token</td>
</tr>
<tr class="even">
<td>CercleSoins/dateMAJ</td>
<td>Meta</td>
<td>_lastUpdated : date</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin/dateEntréeCercleSoin</td>
<td>CareTeam</td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet: participant-start</em></p></td>
</tr>
<tr class="even">
<td>MembreCercleSoin/dateSortieCercleSoin</td>
<td></td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet: participant-end</em></p></td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge/idPersonnePriseCharge</td>
<td>Patient</td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>PersonnePriseCharge/adresseCorrespondance</td>
<td></td>
<td>address : string</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/nomFamille</td>
<td></td>
<td>family : string</td>
</tr>
<tr class="even">
<td>PersonnePhysique/prenom</td>
<td></td>
<td>given : string</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/dateNaissance</td>
<td></td>
<td>birthdate : date</td>
</tr>
<tr class="even">
<td>PersonnePhysique/lieuNaissance</td>
<td></td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : birthplace</em></p></td>
</tr>
<tr class="odd">
<td>PersonnePhysique/sexe</td>
<td></td>
<td>gender : token</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td>RelatedPerson</td>
<td>_id : token</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/nomFamille</td>
<td></td>
<td>name : string</td>
</tr>
<tr class="even">
<td>Contact/role</td>
<td></td>
<td>relationship : token</td>
</tr>
<tr class="odd">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td>PractitionerRole</td>
<td>_id : token</td>
</tr>
<tr class="even">
<td>ExerciceProfessionnel/profession</td>
<td></td>
<td>role : token</td>
</tr>
<tr class="odd">
<td>ExerciceProfessionnel/nomExercice</td>
<td></td>
<td><p><em>Pas de correspondance</em></p>
<p><em>Paramètre de recherche créé dans le cadre de ce volet : nameex</em></p></td>
</tr>
<tr class="even">
<td>SituationExercice/role</td>
<td></td>
<td>role : token</td>
</tr>
<tr class="odd">
<td>Professionnel/idPP</td>
<td>Practitioner</td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td>Organization</td>
<td>_id : token</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/identifiantEG</td>
<td></td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>EntiteGeographique/numFINESS</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>EntiteGeographique/numSIRET</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>EntiteGeographique/idNat_struct</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>EntiteJuridique/identifiantEJ</td>
<td></td>
<td>identifier : token</td>
</tr>
<tr class="even">
<td>EntiteJuridique/numFINESS</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>EntiteJuridique/numSIREN</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>EntiteJuridique/idNat_struct</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>EntiteGeographique/denominationEG</td>
<td></td>
<td>name : string</td>
</tr>
<tr class="even">
<td>OrganisationInterne/identifiantOI</td>
<td></td>
<td>identifier : token</td>
</tr>
<tr class="odd">
<td>OrganisationInterne/nom</td>
<td></td>
<td>name : string</td>
</tr>
<tr class="even">
<td>EntiteJuridique/raisonSociale</td>
<td></td>
<td>name : string</td>
</tr>
</tbody>
</table>

Tableau 5 Mise en correspondance des contenus métier / standard du flux 2

### Flux 3 : Résultat de la recherche de cercles de soins

Le flux 3 - ResultatRechercheCercleSoins contient le résultat de la recherche de cercles de soins.

Les éléments utilisés dans ce flux sont identiques à ceux du flux 1.

### Flux 4 : Mise à jour d’un cercle de soins

Le flux 4 - MiseJourCercleSoins contient les informations nécessaires à la mise à jour d’un cercle de soins.

Les éléments utilisés dans ce flux sont identiques à ceux du flux 1.

## Contenu FHIR des flux structurés

Les tableaux de cette section reprennent les ressources FHIR identifiées dans la section précédente une à une et listent les éléments retenus lors de la mise en correspondance. Ces éléments sont complétés par d’autres éléments qui sont obligatoires selon les spécifications FHIR et sont listés dans l’ordre requis par ces dernières. Les cardinalités retenues sont les cardinalités métier.

Les éléments qui constituent des extensions ou des éléments de ressources contenues seront précisés dans la colonne « Contraintes » des tableaux concernés.

Les tableaux présentés décrivent les éléments des ressources FHIR identifiées de la manière suivante :

  - La colonne « Elément » liste tous les éléments de la ressource,

  - La colonne « Type » indique le type de l’élément ; les contraintes introduites par le profil IHE DCTM pour la ressource CareTeam et par les profils français pour les autres ressources sont reportées en *<span class="underline">italique souligné</span>*,

  - La colonne « Card. » indique la cardinalité de l’élément ; les contraintes introduites par le profil IHE DCTM pour la ressource CareTeam et par les profils français pour les autres ressources y sont reportées en *<span class="underline">italique souligné</span>*),

  - La colonne « Contrainte » indique les contraintes introduites par le présent volet. Ces contraintes sont définies afin d’assurer la conformité aux spécifications fonctionnelles du volet.

  - La colonne « Description » indique la nature de l’information portée par l’élément.

### Ressource « CareTeam »

Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ».

Un profil spécifique dérivé du profil IHE DCTM (IHECareTeam) est créé pour ce volet et nommé CDS\_IHECareTeam. Il est décrit dans le tableau suivant :

<table>
<thead>
<tr class="header">
<th>Elément parent</th>
<th>Elément</th>
<th>Type</th>
<th>Card. de base</th>
<th>Contrainte</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CareTeam</td>
<td>Id</td>
<td>String</td>
<td>[0..1]</td>
<td></td>
<td>Représente l’identifiant technique de la ressource, doit être renseigné par le serveur lors de la création[19]</td>
</tr>
<tr class="even">
<td></td>
<td>meta</td>
<td>Meta</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
<tr class="odd">
<td></td>
<td>meta.lastUpdated </td>
<td>instant</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1] [20]</td>
<td>Date de dernière mise à jour du cercle de soin.</td>
</tr>
<tr class="even">
<td></td>
<td>identifier </td>
<td>Identifier</td>
<td><em><span class="underline">[1..*]</span></em></td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Identifiant du cercle de soins.</td>
</tr>
<tr class="odd">
<td></td>
<td>identifier.value</td>
<td>string</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td><strong>Valeur de l’identifiant.</strong></td>
</tr>
<tr class="even">
<td></td>
<td>status </td>
<td>code</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td><strong>Statut du cercle de soin.<br />
Le statut prend sa valeur dans la liste suivante : proposed | active | suspended | inactive | entered-in-error.</strong></td>
</tr>
<tr class="odd">
<td></td>
<td>category</td>
<td>CodeableConcept</td>
<td>[0..*]</td>
<td></td>
<td><p>Type d’équipe.</p>
<p>Une personne prise en charge ne peut avoir qu’un cercle de soins donc cet élément n’est pas utilisé.</p></td>
</tr>
<tr class="even">
<td></td>
<td>name</td>
<td>string</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td>Nom de l’équipe tel que « Cercle de soins de Mr Dupont ».</td>
</tr>
<tr class="odd">
<td></td>
<td>subject</td>
<td><p>Reference</p>
<p>(Patient|<em><del>Group</del></em>)</p></td>
<td><em><span class="underline">[1..1]</span></em></td>
<td>Référence contrainte au Profil FrPatient</td>
<td>Le sujet du cercle de soins est une personne prise en charge (« Patient »).</td>
</tr>
<tr class="even">
<td></td>
<td>encounter</td>
<td><p>Reference</p>
<p>(Encounter)</p></td>
<td>[0..1]</td>
<td></td>
<td>La rencontre au cours de laquelle le cercle de soins a été créé ou à laquelle la création de cet enregistrement est étroitement associée n’est pas utilisée dans ce volet.</td>
</tr>
<tr class="odd">
<td></td>
<td>period</td>
<td>Period</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td>Période couverte par le cercle de soins.</td>
</tr>
<tr class="even">
<td></td>
<td>period.start</td>
<td>dateTime</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td>Date de création du cercle de soin.</td>
</tr>
<tr class="odd">
<td></td>
<td>period.end </td>
<td>dateTime</td>
<td>[0..1]</td>
<td></td>
<td>Date de fin d'existence du cercle de soins</td>
</tr>
<tr class="even">
<td></td>
<td>participant</td>
<td>BackboneElement</td>
<td>[0..*]</td>
<td></td>
<td>Membres du cercle de soins.</td>
</tr>
<tr class="odd">
<td></td>
<td>participant.role</td>
<td>CodeableConcept</td>
<td>[0..*]</td>
<td></td>
<td>Type d’implication.</td>
</tr>
<tr class="even">
<td></td>
<td>participant.member</td>
<td><p>Reference</p>
<p>(Practitioner|PractitionerRole| RelatedPerson|Patient|Organization|CareTeam)</p></td>
<td><em><span class="underline">[1..1]</span></em></td>
<td><p><strong>Reference contrainte aux ressources PractitionerRole, RelatedPerson et Organization dans le présent volet</strong></p>
<p><strong>Profils</strong></p>
<p>PractitionerRoleOrganizationalRoleRASS, CDS_FrRelatedPerson, FrOrganization, CDS_Organization-OrgaInt</p></td>
<td>Il s’agit d’une personne (Professionnel ou Personne Tierce) ou d’une Entité qui fait partie du Cercle de Soins d’un Usager</td>
</tr>
<tr class="odd">
<td></td>
<td>participant.onBehalfOf</td>
<td><p>Reference</p>
<p>(Organization)</p></td>
<td>[0..1]</td>
<td></td>
<td>La référence à l’organisation dans laquelle exerce le professionnel n’est pas utilisée.</td>
</tr>
<tr class="even">
<td></td>
<td>participant.period</td>
<td>Period</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td>Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin de participation à ce cercle.</td>
</tr>
<tr class="odd">
<td></td>
<td><p>participant.period.</p>
<p>start </p></td>
<td>dateTime</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td><p>Date de début et de fin de participation au cercle de soin de la personne prise en charge</p>
<p>Un membre doit pouvoir entrer et sortir plusieurs fois du cercle de soins. Pour satisfaire cette demande, il est possible de créer plusieurs instances de l’élément participant faisant référence au même membre mais à des périodes différentes.</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>participant.period.</p>
<p>end</p></td>
<td>dateTime</td>
<td>[0..1]</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>reasonCode</td>
<td>CodeableConcept</td>
<td>[0..*]</td>
<td></td>
<td>Elément adapté à une gestion de plusieurs cercles de soins pour un patient donc non utilisé dans le cadre de ce volet.</td>
</tr>
<tr class="even">
<td></td>
<td>reasonReference</td>
<td><p>Reference</p>
<p>(Condition)</p></td>
<td>[0..*]</td>
<td></td>
<td>Elément adapté à une gestion de plusieurs cercles de soins pour un patient donc non utilisé dans le cadre de ce volet.</td>
</tr>
<tr class="odd">
<td></td>
<td>managingOrganization</td>
<td><p>Reference</p>
<p>(Organization)</p></td>
<td>[0..*]</td>
<td></td>
<td>L’organisation responsable du cercle de soins.</td>
</tr>
<tr class="even">
<td></td>
<td>telecom</td>
<td>ContactPoint</td>
<td>[0..*]</td>
<td></td>
<td>Point de contact central du cercle de soins (qui s’applique à tous les membres) ; élément non utilisé dans le cadre de ce volet.</td>
</tr>
<tr class="odd">
<td></td>
<td>note</td>
<td>Annotation</td>
<td>[0..*]</td>
<td></td>
<td>Commentaires sur le cercle de soins.</td>
</tr>
</tbody>
</table>

Tableau 6 Définition du profil de la ressource CareTeam

### Ressource « Patient »

La ressource Patient est identifiée pour véhiculer les informations, notamment d’identité, du sujet du cercle de soins.

Le concept métier « PersonnePriseCharge » correspond au profil français « FrPatient » du package hl7.fhir.fr.core 1.1.0.

Le profil FrPatient n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE :

  - élément « meta » obligatoire
    
    « meta » : informations relatives à la gestion des classes et des données,

  - élément « identifier » obligatoire
    
    « identifier » : identifiant(s) de la personne prise en charge (identifiants de santé, identifiants locaux, …,

  - élément « telecom » obligatoire
    
    « telecom » : adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse e-mail URL, etc.),

  - cardinalité de l’élément « address » contrainte à \[1..1\]
    
    « address » : adresse(s) de correspondance de la personne prise en charge.

### Ressource « PractitionerRole » 

  - <span class="underline">« PractitionerRoleOrganizationalRoleRASS » : Situation d’exercice</span>

Le concept métier « SituationExercice » correspond au profil français du package *ANS.annuaire.fhir.r4 0.2.0* de l’Annuaire Santé « PractitionerRoleOrganizationalRoleRASS».

Le profil PractitionerRoleOrganizationalRoleRASS n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE :

  - élément « meta » obligatoire
    
    « meta » : informations relatives à la gestion des classes et des données,

  - extension « partOf » : référence au profil PractitionerRoleProfessionalRoleRASS préconisée
    
    « partOf » : référence vers l’exercice professionnel de rattachement,

  - cardinalité de l’élément « telecom » contrainte à \[1..\*\]
    
    « telecom » : Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation d'exercice.

<!-- end list -->

  - <span class="underline">« PractitionerRoleProfessionalRoleRASS » : Exercice professionnel</span>
    
    Le concept métier « ExerciceProfessionnel » correspond au profil français du package *ANS.annuaire.fhir.r4 0.2.0* de l’Annuaire Santé « PractitionerRoleProfessionalRoleRASS ».
    
    Ce profil rend obligatoire le lien entre l’exercice professionnel et le professionnel ; ce lien est modélisé par l’élément « practitioner ».
    
    Le profil PractitionerRoleProfessionalRoleRASS n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE :

<!-- end list -->

  - élément « meta » obligatoire
    
    « meta » : informations relatives à la gestion des classes et des données,

  - cardinalité de l’élément « practitionerRole-name.suffix » contrainte à \[0..1\]
    
    « practitionerRole-name.suffix » : Civilité d’exercice du professionnel
    
    « practitionerRole-name » : Extension RASS permettant d’indiquer le nom et la civilité sous lesquels exerce le professionnel,

  - cardinalité de l’élément « practitionerRole-name.given » contrainte à \[0..1\]
    
    « practitionerRole-name.given » : Prénom sous lequel exerce le professionnel
    
    « practitionerRole-name » : Extension RASS permettant d’indiquer le nom et la civilité sous lesquels exerce le professionnel,

  - cardinalité de l’élément « code »  contrainte à \[0..1\]
    
    « code » : Profession exercée ou future profession de l'étudiant.

### Ressource « Practitioner »

Le concept métier « Professionnel » correspond au profil français « FrPractitioner » du package [hl7.fhir.fr.core 1.1.0](https://simplifier.net/packages/hl7-france-fhir.administrative-2022/1.0.0)   

Le profil « FrPractitioner » n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE :

  - élément « meta » obligatoire
    
    « meta » : informations relatives à la gestion des classes et des données,

  - cardinalité de l’élément « identifier » contrainte à \[0..1\]
    
    « identifier » : identifiant métier.

### Ressource « Organization »

  - <span class="underline">« FrOrganization » : Entité géographique et Entité juridique</span>

Le profil français du package hl7.fhir.fr.core 1.1.0   « FrOrganization » est utilisé pour supporter les concepts « EntiteGeographique » et « EntiteJuridique ».

Le profil FrOrganization n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE :

  - élément « meta » obligatoire
    
    « meta » : informations relatives à la gestion des classes et des données,

  - lorsque l’organisation est une entité géographique membre d’un cercle de soins :
    
      - élément « telecom » obligatoire
        
        « telecom » : Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation d'exercice,
    
      - élément « partOf » obligatoire de manière à spécifier l’entité juridique à laquelle appartient l’entité géographique
        
        « partOf » : entité juridique à laquelle appartient l’entité géographique.

<!-- end list -->

  - <span class="underline">« Organization » : Organisation interne</span>

La ressource « Organization » sera utilisée pour supporter le concept « OrganisationInterne ».

Un profil hérité de « Organization » et nommé CDS\_Organization-OrgaInt est créé pour ce volet et décrit ci-dessous :

<table>
<thead>
<tr class="header">
<th>Elément parent</th>
<th>Elément</th>
<th>Type</th>
<th>Card. de base</th>
<th>Contrainte</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Organization</td>
<td>meta </td>
<td>Meta</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
<tr class="even">
<td></td>
<td>id</td>
<td>Id</td>
<td>[0..1]</td>
<td></td>
<td>Identifiant logique</td>
</tr>
<tr class="odd">
<td></td>
<td>identifier </td>
<td>Identifier</td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [0..1]</td>
<td>Identifiant(s) métier</td>
</tr>
<tr class="even">
<td></td>
<td>active</td>
<td>boolean</td>
<td>[0..1]</td>
<td></td>
<td>Indique si l'enregistrement de l'organisation est toujours en cours d'utilisation.</td>
</tr>
<tr class="odd">
<td></td>
<td>type</td>
<td>CodeableConcept</td>
<td>[0..*]</td>
<td></td>
<td>Type d’organisation</td>
</tr>
<tr class="even">
<td></td>
<td>name</td>
<td>string</td>
<td>[0..1]</td>
<td></td>
<td>Nom de l'organisation interne.</td>
</tr>
<tr class="odd">
<td></td>
<td>alias</td>
<td>string</td>
<td>[0..*]</td>
<td></td>
<td>Une liste de noms alternatifs de l'organisation, actuels ou passés.</td>
</tr>
<tr class="even">
<td></td>
<td>telecom</td>
<td>ContactPoint</td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [1..*]</td>
<td>Contact de l’organisation</td>
</tr>
<tr class="odd">
<td></td>
<td>address</td>
<td>Address</td>
<td>[0..*]</td>
<td></td>
<td>Adresse(s) géopostale(s) de l’organisation.</td>
</tr>
<tr class="even">
<td></td>
<td>partOf</td>
<td>Reference (Organization)</td>
<td>[0..1]</td>
<td><p>Cardinalité contrainte à [1..1]</p>
<p>Reference contrainte au profil <em>FrOrganization</em></p></td>
<td>L’entité géographique abritant l’Ogranisation Interne.</td>
</tr>
<tr class="odd">
<td></td>
<td>contact</td>
<td>BackboneElement</td>
<td>[0..*]</td>
<td></td>
<td>Contact pour l'organisation dans un certain but.</td>
</tr>
<tr class="even">
<td></td>
<td>endpoint</td>
<td>Reference (Endpoint)</td>
<td>[0..*]</td>
<td></td>
<td>Description des connexions techniques entre les différents systèmes de l’organisation.</td>
</tr>
<tr class="odd">
<td></td>
<td><p>mailboxMSS</p>
<p>Extension MailboxMSS (rass)</p></td>
<td></td>
<td>[0..*]</td>
<td></td>
<td><p>Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS).</p>
<p>Extension RASS ajoutée à ce profil.</p></td>
</tr>
</tbody>
</table>

Tableau 7 Définition du profil de la ressource Organization pour les Organisations Internes

### Ressource « RelatedPerson »

Les différentes personnes décrites comme des contacts du sujet du cercle de soins (aidant, personne de confiance, …) sont représentées par le profil français « FrRelatedPerson » du package hl7.fhir.fr.core 1.1.0 . L’élément « relationship » de ce profil permet d’indiquer à la fois les informations concernant la relation personnelle (mère, sœur, époux, fille, …) et la responsabilité (responsable légal, personne de confiance, …) entre la personne tierce et la personne prise en charge.

Un profil spécifique est créé pour ce volet et nommé CDS\_FrRelatedPerson. Il est décrit dans le tableau suivant :

<table>
<thead>
<tr class="header">
<th>Elément parent</th>
<th>Elément</th>
<th>Type</th>
<th>Card. de base</th>
<th>Contrainte</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>RelatedPerson</p>
<p>FrRelatedPerson</p></td>
<td>meta </td>
<td>Meta</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
<tr class="even">
<td></td>
<td>id</td>
<td>Id</td>
<td>[0..1]</td>
<td></td>
<td>Identifiant logique</td>
</tr>
<tr class="odd">
<td></td>
<td>text </td>
<td>Narrative</td>
<td>[0..1]</td>
<td></td>
<td>Une description du contact.</td>
</tr>
<tr class="even">
<td></td>
<td>identifier </td>
<td>Identifier</td>
<td><em><span class="underline">[1..1]</span></em></td>
<td></td>
<td>Identifiant(s) métier du contact.</td>
</tr>
<tr class="odd">
<td></td>
<td>active</td>
<td>boolean</td>
<td>[0..1]</td>
<td></td>
<td>Indique si l’enregistrement de la personne est en cours d'utilisation ou non.</td>
</tr>
<tr class="even">
<td></td>
<td>patient</td>
<td>Reference (<em><span class="underline">FrPatient</span></em>)</td>
<td>[1..1]</td>
<td></td>
<td>Le patient auquel cette personne est liée.</td>
</tr>
<tr class="odd">
<td></td>
<td>relationship</td>
<td>CodeableConcept</td>
<td><em><span class="underline">[1..*]</span></em></td>
<td></td>
<td><p>Lien avec la personne prise en charge.</p>
<p>L’élément est slicé pour indiquer le rôle [0..1] de la personne tierce d’une part et sa relation [0..*] avec la personne prise en charge d’autre part.</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Relationship</p>
<p><em>Slice « RolePerson »</em></p></td>
<td>CodeableConcept</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Rôle de la personne.</td>
</tr>
<tr class="odd">
<td></td>
<td><p>Relationship</p>
<p><em>Slice « RelatedPerson »</em></p></td>
<td>CodeableConcept</td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [0..1]</td>
<td>Relation de la personne.</td>
</tr>
<tr class="even">
<td></td>
<td>name</td>
<td><p>HumanName</p>
<p><em><span class="underline">FrHumanName</span></em></p></td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Un nom de la personne ou du service à contacter.</td>
</tr>
<tr class="odd">
<td></td>
<td>name.prefix</td>
<td>String</td>
<td><em><span class="underline">[0..1]</span></em></td>
<td></td>
<td>Civilité de la personne à contacter.</td>
</tr>
<tr class="even">
<td></td>
<td>name.given </td>
<td>String</td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [0..1]</td>
<td>Un prénom de la personne à contacter.</td>
</tr>
<tr class="odd">
<td></td>
<td>name.family </td>
<td>String</td>
<td>[0..1]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>Un nom de la personne à contacter.</td>
</tr>
<tr class="even">
<td></td>
<td>telecom</td>
<td><p>ContactPoint</p>
<p><em><span class="underline">FrContactPoint</span></em></p></td>
<td>[0..*]</td>
<td>Cardinalité contrainte à [1..*]</td>
<td>Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.)</td>
</tr>
<tr class="odd">
<td></td>
<td>gender</td>
<td>code</td>
<td>[0..1]</td>
<td></td>
<td>Sexe administratif.</td>
</tr>
<tr class="even">
<td></td>
<td>birthDate</td>
<td>date</td>
<td>[0..1]</td>
<td></td>
<td>Date de naissance de la personne.</td>
</tr>
<tr class="odd">
<td></td>
<td>address</td>
<td>Address</td>
<td>[0..*]</td>
<td></td>
<td>Adresse(s) géopostale(s) du point de contact.</td>
</tr>
<tr class="even">
<td></td>
<td>photo</td>
<td>Attachment</td>
<td>[0..*]</td>
<td></td>
<td>Image de la personne.</td>
</tr>
<tr class="odd">
<td></td>
<td>period</td>
<td>Period</td>
<td>[0..1]</td>
<td></td>
<td>La période pendant laquelle cette relation est ou était active. S'il n'y a pas de dates définies, l'intervalle est inconnu.</td>
</tr>
<tr class="even">
<td></td>
<td>communication</td>
<td>BackboneElement</td>
<td>[0..*]</td>
<td></td>
<td>Une langue qui peut être utilisée pour communiquer sur la santé du patient.</td>
</tr>
</tbody>
</table>

Tableau 8 Définition du profil de la ressource RelatedPerson

![](images/media/image5.png)**<span class="underline">Schéma des relations entre les ressources FHIR</span> :**

Figure 1 Représentation des ressources FHIR liées entre elles par des éléments de type « Reference

#   
Construction des flux

La construction des flux repose sur l’API REST de FHIR.

***<span class="underline">Préambule :</span>***

Deux options sont proposées pour la construction des flux :

  - La première (option Restful) consiste à se plier au profil IHE DCTM et à assurer la création et la mise à jour du cercle de soins par des requêtes POST et PUT de la ressource « CareTeam ». Cette option implique la définition de flux permettant de gérer les acteurs de cercle de soins. Chaque ressource (« Patient », « Practitioner », « PractitionerRole », « RelatedPerson » et « Organization ») pourra ainsi être créée ou mise à jour.

  - La seconde (option transaction) consiste à s’inspirer du profil IHE DCTM en introduisant une transaction permettant d’encapsuler les différentes ressources nécessaires dans un Bundle.

Le gestionnaire doit implémenter les deux options.

***<span class="underline">Récapitulatif des flux :</span>***

La synthèse des flux est présentée en introduction du document dans le Tableau 1 Synthèse des flux issue de la SFE.

## Option Restful

### Gestion des acteurs

Les flux de gestion des ressources représentant les acteurs de cercle de soins sont des flux de création et de mise à jour des acteurs respectivement opérés par les requêtes HTTP POST et HTTP PUT sur les ressources FHIR « Patient », « Practitioner », « PractitionerRole », « RelatedPerson » et « Organization ».

Il est fortement recommandé de s’appuyer sur les données de l’Annuaire Santé\[21\], rassemblant les données d’identification des professionnels et des structu res de santé issues des différents référentiels nationaux.

Le flux 1a de création d’un acteur est une requête HTTP POST reposant sur l’interaction « create » de FHIR\[22\].

Le flux 4a de mise à jour est une requête HTTP PUT reposant sur l’interaction « update » de FHIR\[23\]. La mise à jour nécessite de préciser l’identifiant logique de la ressource à mettre à jour.

Ces requêtes sont envoyées au gestionnaire :

![](images/media/image6.png)

Figure 2 Diagramme de séquence des flux 1a et 4a

Si la création de l’acteur est correctement effectuée, un code HTTP *201 created* est retourné.

Si la mise à jour d’un acteur est correctement effectuée, le système gestionnaire retourne un code HTTP *200 OK*\[24\].

### Gestion du cercle de soins

Les flux permettant de gérer les cercles de soins sont définis ci-dessous :

  - Le flux 1b de création du cercle de soins sera assuré par une ou plusieurs requêtes HTTP POST.

  - Le flux 2a de recherche de cercles de soins sera assuré par une requête HTTP GET.

  - Le flux 2b est un flux de demande de récupération d’un cercle de soins particulier ; il sera assuré par une requête HTTP GET.

  - Le flux 3a de réponse à la recherche de cercles de soins sera assuré par la réponse à la requête HTTP GET (flux 2a).

  - Le flux 3b est un flux de réponse à la demande de récupération d’un Cercle de Soins particulier ; il sera assuré par la réponse à la requête HTTP GET (flux 2b).

  - Le flux 4b de mise à jour du cercle de soins sera assuré par une ou plusieurs requêtes HTTP PUT.

Comme indiqué dans la Spécification Fonctionnelle des Echanges du présent volet, le pré-requis à la création d’un cercle de soins est la recherche de ce cercle de soins. Si le cercle de soins n’existe pas, il est créé (flux 1b), sinon, il est mis à jour (flux 4b) :

![](images/media/image7.png)

Figure 3 Diagramme de séquence des flux de gestion d’un cercle de soins (1b, 2a, 2b, 3a, 3b et 4b)

  - <span class="underline">Flux 1b : Création d’un cercle de soins</span>

Le flux de création de la ressource « CareTeam » est une requête HTTP POST reposant sur l’interaction « create » de FHIR. La ressource « CareTeam » constitue le corps de la requête. Ce flux se base sur la requête de la transaction IHE « Update Care Team » \[PCC-45\] du profil DCTM.

Si la création du cercle de soins est correctement effectuée, un code HTTP *201 created* est retourné.

  - <span class="underline">Flux 2a : Recherche de cercles de soins</span>

Ce flux se base sur la requête de la transaction IHE « Search for Care Team » \[PCC-46\] du profil DCTM.

Le flux 2a de recherche de cercles de soins est une requête HTTP GET reposant sur l’interaction « search » de FHIR\[25\].

La requête GET est accompagnée des paramètres listés dans le tableau ci-dessous. Ces critères de recherche ont été définis dans les Spécifications Fonctionnelles des Echanges de ce volet. Des paramètres de recherche chaînés doivent être définis afin de répondre à ces attentes.

<table>
<thead>
<tr class="header">
<th>Critère de recherche</th>
<th>Paramètre de recherche</th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Identifiant du cercle de soins</td>
<td>identifier : token</td>
<td></td>
</tr>
<tr class="even">
<td>Date de création du cercle de soins</td>
<td><p>start : date</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
<tr class="odd">
<td>Date de fin du cercle de soins</td>
<td><p>end : date</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
<tr class="even">
<td>Statut du cercle de soins</td>
<td>status : token</td>
<td></td>
</tr>
<tr class="odd">
<td>Date de mise à jour du cercle de soins</td>
<td>_lastUpdated : date</td>
<td></td>
</tr>
<tr class="even">
<td>Date d’entrée d’un membre du cercle de soins</td>
<td><p>participant-start : date</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
<tr class="odd">
<td>Date de sortie d’un membre du cercle de soins</td>
<td><p>participant-end : date</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
<tr class="even">
<td>Identifiant du sujet du cercle de soins</td>
<td>patient.identifier : token</td>
<td></td>
</tr>
<tr class="odd">
<td>Adresse du sujet du cercle de soins</td>
<td>patient.address  : string</td>
<td></td>
</tr>
<tr class="even">
<td>Nom du sujet du cercle de soins</td>
<td>patient.family  : string</td>
<td></td>
</tr>
<tr class="odd">
<td>Prénom du sujet du cercle de soins</td>
<td>patient.given  : string</td>
<td></td>
</tr>
<tr class="even">
<td>Date de naissance du sujet du cercle de soins</td>
<td>patient.birthdate : date</td>
<td></td>
</tr>
<tr class="odd">
<td>Sexe du sujet du cercle de soins</td>
<td>patient.gender : token</td>
<td></td>
</tr>
<tr class="even">
<td>Lieu de naissance du sujet du cercle de soins</td>
<td><p>patient.birthplace : string</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
<tr class="odd">
<td>Identifiant du membre du cercle de soins</td>
<td>Le membre est un contact</td>
<td>participant:RelatedPerson._id : token</td>
</tr>
<tr class="even">
<td></td>
<td>Le membre est un professionnel dans une situation d’exercice</td>
<td>participant:PractitionerRole._id : token</td>
</tr>
<tr class="odd">
<td></td>
<td>Le membre est une entité géographique ou une organisation interne</td>
<td>participant:Organization._id : token</td>
</tr>
<tr class="even">
<td>Identifiant du professionnel</td>
<td><em>participant:PractitionerRole.partof:PractitionerRole.practitioner:Practitioner.identifier</em></td>
<td></td>
</tr>
<tr class="odd">
<td>Identifiant de l’entité géographique, de l’entité juridique ou de l’organisation interne</td>
<td>participant:Organization.identifier : token</td>
<td></td>
</tr>
<tr class="even">
<td>Nom du membre du cercle de soins</td>
<td>Le membre est un contact</td>
<td>participant:RelatedPerson.name: string</td>
</tr>
<tr class="odd">
<td></td>
<td>Le membre est un professionnel dans un exercice professionnel ou dans une situation d’exercice</td>
<td><p>participant:PractitionerRole.partof.nameex : string</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
</tr>
<tr class="even">
<td></td>
<td>Le membre est une entité géographique ou une organisation interne</td>
<td>participant:Organization.name : string</td>
</tr>
<tr class="odd">
<td>Raison sociale de l’Entité Juridique</td>
<td>participant:Organization.partof.name : string</td>
<td></td>
</tr>
<tr class="even">
<td>Rôle du membre du cercle de soins</td>
<td>Le membre est un contact</td>
<td>participant:RelatedPerson.relationship: token</td>
</tr>
<tr class="odd">
<td></td>
<td>Le membre est un professionnel dans un exercice professionnel</td>
<td>participant:PractitionerRole.role : token</td>
</tr>
<tr class="even">
<td>Organisation responsable du cercle de soins</td>
<td><p>managingOrganization : Reference</p>
<p>Paramètre de recherche créé dans le cadre de ce volet</p></td>
<td></td>
</tr>
</tbody>
</table>

Tableau 9 Liste des critères de recherche de cercles de soins, paramètres de la requête HTTP GET

Le paramètre « \_include »\[26\] pourra être utilisé pour demander le renvoi des ressources référencées par les éléments de la ressource « CareTeam », particulièrement par les éléments « subject » et « participant.member ».

Afin de pouvoir retourner les ressources référencées par la CareTeam de manière itérative à plusieurs niveaux d’imbrication, le modificateur « : iterate » devra être utilisé avec les paramètres « \_include » et « \_revinclude ». Afin de limiter le contenu renvoyé dans le résultat de la recherche, le paramètre « \_elements »\[27\] pourra être utilisé pour lister les attributs de la ressource « CareTeam » à retourner par le serveur.

<span class="underline">Exemples de requêtes :</span>

**GET http://targetsystem.com/API/Careteam?\_include:iterate=\*\&patient.identifier=http://exAutoriteAffectation/patient|123456 HTTP/1.1**

  - Rechercher les ressources de type Careteam dont le sujet porte l’identifiant 123456. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par les ressources « CareTeam » retournées ainsi que les ressources référencées par ces-dites ressources.

**GET http://targetsystem.com/API/Careteam?\_include:iterate =CareTeam:subject\&participant:RelatedPerson.name:exact=Ducros\&participant:RelatedPerson.address=Tourcoing HTTP/1.1**

  - Rechercher les ressources de type Careteam ayant un membre de type RelatedPerson portant le nom Ducros et vivant à Tourcoing. Le résultat de la recherche devrait aussi inclure toutes les ressources référencées par l’élément « subject » des ressources « Careteam » retournées, c’est-à-dire les ressources correspondant aux patients ayant cette personne tierce dans leur cercle de soins.

Pour plus d’information sur la syntaxe des requêtes de recherche veuillez consulter la documentation relative à l’interaction de recherche, « search », de l’API REST FHIR\[28\].

  - <span class="underline">Flux 3a : Réponse à la recherche de cercles de soins</span>

Le flux 3a constitue la réponse à la requête GET du flux 2a. Lorsque la recherche s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 *OK*. Le corps de la réponse à la requête est une ressource « Bundle » de type « searchset » encapsulant 0, 1 à plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET.

Les flux 2a et 3a correspondent à la transaction IHE « Search for CareTeam » \[PCC-46\].

  - <span class="underline">Flux 2b : Récupération d’un cercle de soins</span>

Ce flux se base sur la requête de la transaction IHE « Retrieve Care Team » \[PCC-47\] du profil DCTM.

La récupération d’une ressource CareTeam correspondant à un identifiant spécifié est basée sur l’interaction « read » de FHIR\[29\].

Le flux 2b est donc une requête HTTP GET accompagnée du paramètre « id ».

La récupération d’une ressource CareTeam correspondant à un identifiant logique doit pouvoir être réalisée en s’appuyant sur l’interaction « vread » de FHIR\[30\] qui permet de tenir compte de la version de la ressource et sur l’interaction « history » qui permet de demander la récupération d’une version précise de la ressource\[31\] (history-instance et history-type devront être proposés).

<span class="underline">Exemple de requête :</span>

**GET http://targetsystem.com/API/Careteam/123/\_history/2**

  - Rechercher la deuxième version de la ressource CareTeam 123.

<!-- end list -->

  - <span class="underline">Flux 3b : Réponse à la récupération d’un cercle de soins</span>

Le flux 3b constitue la réponse à la requête GET du flux 3a. Lorsque la requête s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 *OK*. Le corps de la réponse à la requête est une ressource « CareTeam » portant l’identifiant demandé et le cas échéant correspondant à la version précisée dans la requête.

Les flux 2b et 3b de récupération d’un cercle de soins correspondent à la transaction IHE « Retrieve CareTeam » \[PCC-47\].

  - <span class="underline">Flux 4b : Mise à jour d’un cercle de soins</span>

Le flux de mise à jour de la ressource « CareTeam » est une requête HTTP PUT. La ressource « CareTeam » constitue le corps de la requête. La mise à jour de la ressource CareTeam nécessite de préciser l’identifiant logique de la ressource à mettre à jour. Ce flux se base sur la requête de la transaction IHE « Update Care Team » \[PCC-45\] du profil DCTM.

La mise à jour du cercle de soins doit pouvoir être réalisée en s’appuyant sur l’interaction « update » de FHIR.

Si la mise à jour du cercle de soins est correctement effectuée, le système gestionnaire retourne un code HTTP 200 ok. Pour des informations sur les autres codes HTTP (HTTP status codes) consultez la documentation relative à l’interaction de mise à jour, « update » de l’API REST FHIR.

A la mise à jour du cercle de soins, le gestionnaire incrémente le numéro de version de la ressource (Careteam.meta.versionID) et indique la date de la mise à jour au niveau de Careteam.meta.LastUpdated.

## Option transaction

  - <span class="underline">Création d’un cercle de soins</span>

La première étape de la construction de ce flux de création du cercle de soins consiste à organiser son contenu. Plusieurs types de ressources sont présents :

  - **La ressource CareTeam (profil CDS\_IHECareTeam),**

  - La ressource référencée en tant que sujet du Cercle de Soins : la ressource Patient (profil FrPatient),

  - La ou les ressources référencées comme membres du Cercle de Soins, et celles qu’elles référencent, parmi les ressources suivantes :
    
      - PractitionerRole (profil PractitionerRoleOrganizationalRoleRASS) pour représenter la situation d’exercice particulière d’un professionnel.
        
          - Avec PractitionerRole (profil PractitionerRoleProfessionalRoleRASS) représentant l’exercice professionnel, référencée depuis PractitionerRole.partOf.
        
          - Avec Practitioner (profil FrPractitioner) référencée depuis PractitionerRole.practitioner (Exercice professionnel).
    
      - RelatedPerson (profil CDS\_FrRelatedperson) pour représenter une personne tierce,
    
      - Organization (profil FrOrganization) pour représenter une entité géographique (EG)
        
          - Avec Organization (profil FrOrganization) représentant l’entité juridique (EJ) et référencée depuis Organization.partOf (EG)
    
      - Organization (profil CDS\_Organization-OrgaInt) pour représenter une organisation interne (OI)
        
          - Avec Organization (profil FrOrganization) représentant l’entité géographique et référencée depuis Organization.partOf (OI)
    
      - Ou aucune si le seul membre est la personne prise en charge déjà référencée comme sujet du Cercle de Soins.

Ces ressources sont encapsulées dans une ressource « Bundle » de type « transaction » conforme au profil « CDS\_BundleTransactionCreation ». Le Bundle contient à minima une ressource CareTeam. Ce Bundle constitue le corps de la requête HTTP POST.

![PlantUML diagram](images/media/image8.png)

**Figure 4 Diagramme de séquence du flux 1c**

Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à POST pour les nouvelles ressources à poster sur le serveur :

  - Pour la ressource CareTeam, l’attribut request.method sera positionné à POST,

  - Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera positionné à POST.

**La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.**

Si la transaction a été correctement effectuée et donc que la création du cercle de soins est correctement effectuée, un code HTTP 200 *ok* est retourné\[32\]. Un Bundle de type transaction-response doit être renvoyé dans le corps de la réponse\[33\]. Ce dernier doit contenir les ressources telles qu’elles ont été créées par le gestionnaire ou, à minima, les identifiants logiques des ressources ayant été attribués par le gestionnaire (dans Bundle.entry.fullUrl et/ou Bundle.entry.resource.id).

Sinon, un code HTTP 500 *Internal Server Error* est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.

  - <span class="underline">Mise à jour de cercles de soins</span>

Le Bundle « CDS\_BundleTransactionMAJ » peut contenir exactement les mêmes ressources que le CDS\_BundleTransactionCreation**.** Le Bundle contient à minima une ressource CareTeam ; concernant les acteurs, seules la ou les ressources qui doivent être créées ou mises à jour sont inclues dans le bundle. Ce Bundle constitue le corps de la requête HTTP POST.

![Une image contenant table Description générée automatiquement](images/media/image9.png)

Figure 4 - Diagramme de séquence du flux 4c

Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à PUT pour chaque ressource à mettre à jour ou à POST pour chaque nouvelle ressource à créer sur le serveur :

  - Pour la ressource CareTeam, l’attribut request.method sera positionné à PUT,

  - Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera alors positionné à POST s’il s’agit d’un nouvel acteur ou à PUT pour mettre à jour un membre.

**La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.**

  - <span class="underline">Recherche et récupération de cercles de soins</span>

Les flux 2a, 2b, 3a et 3b sont les mêmes que ceux décrits dans la partie 3.1.

# Disposition de sécurité

Les données véhiculées à travers ces flux sont des données à caractère personnel contenant notamment les traits d’identité et coordonnées des patients et des professionnels.

Cette section présente les éventuelles recommandations de sécurité qui s’appliquent au volet Gestion de Cercle de Soins. Il s’agit d’un sous-ensemble lié à la dimension interopérabilité de dispositions de sécurité plus globales visant à couvrir les exigences de sécurité d’un système cible.

Il est du ressort du responsable de traitement du système cible de mettre en œuvre des dispositions de sécurité adaptées à son analyse de risques pour le service. En fonction de sa politique de sécurité, il peut choisir ou pas de mettre en œuvre les dispositions spécifiques décrites dans cette section. Les référentiels de sécurité édités par l’ANS fournissent des recommandations sur ce sujet.

## Authentification et droit d’accès 

Pas de disposition spécifique à ce volet.

## Confidentialité 

Pas de disposition spécifique à ce volet.

## Intégrité 

Pas de disposition spécifique à ce volet.

## Traçabilité 

Pas de disposition spécifique à ce volet.

## Imputabilité 

Pas de disposition spécifique à ce volet.

## Disponibilité 

Pas de disposition spécifique à ce volet.

<span id="_Toc127530592" class="anchor"></span>Annexe 1 : Bilan de profilage des ressources FHIR

Cette section résume les modifications apportées aux spécifications de base des ressources FHIR et aux profils adoptés dans le présent volet:

<table>
<thead>
<tr class="header">
<th>Nom de la ressource</th>
<th>Modifications apportées</th>
<th>Commentaires</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CareTeam</td>
<td><ul>
<li><p>Dérivé du profil IHECareTeam défini dans DCTM</p></li>
<li><p>Modification de certaines cardinalités</p></li>
<li><p>Contraintes sur les références</p></li>
</ul></td>
<td></td>
</tr>
<tr class="even">
<td>Organization</td>
<td><ul>
<li><p>Modification de certaines cardinalités</p></li>
<li><p>Utilisation de l’extension mailboxMSS</p></li>
</ul></td>
<td>La ressource FHIR est profilée pour représenter les Organisations Internes</td>
</tr>
<tr class="odd">
<td>RelatedPerson</td>
<td><ul>
<li><p>Dérivé du profil français FrRelatedPerson</p></li>
<li><p>Modification de certaines cardinalités</p></li>
<li><p>Contraintes sur les références</p></li>
</ul></td>
<td></td>
</tr>
</tbody>
</table>

Tableau 10 Ressources et profils FHIR contraints dans le volet CdS

<span id="_Toc64044239" class="anchor"></span>Annexe 2 : Ressources de conformité

Les ressources de conformité suivantes ont été créées et sont à disposition des éditeurs sur l’espace de publication du CI-SIS sur esante.gouv.fr :

  - StructureDefinition pour les profils de ressources spécifiques à la gestion du cercle de soins :

| Profil parent   | Profil CdS                     | URL                                                                                  | Version |
| --------------- | ------------------------------ | ------------------------------------------------------------------------------------ | ------- |
| IHECareTeam     | CDS\_IHECareTeam               | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_IHECareTeam               | 2.0     |
| FrRelatedPerson | CDS\_ FrRelatedPerson          | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_FrRelatedPerson           | 1.0     |
| Organization    | CDS\_Organization-OrgaInt      | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_Organization-OrgaInt      | 2.0     |
| Bundle          | CDS\_BundleTransactionCreation | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_BundleTransactionCreation | 2.1     |
| Bundle          | CDS\_BundleTransactionMAJ      | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_BundleTransactionMAJ      | 1.0     |
| Bundle          | CDS\_BundleResponseRecherche   | http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/CDS\_BundleResponseRecherche   | 2.0     |

Tableau 12 StructureDefinition des profils définis dans ce volet

  - SearchParameter créés pour ce volet :

| Paramètre de recherche              | URL                                                                                | Version |
| ----------------------------------- | ---------------------------------------------------------------------------------- | ------- |
| CDS\_CareTeam\_start                | <http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_start>             | 1.0     |
| CDS\_CareTeam\_end                  | <http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_end>               | 1.0     |
| CDS\_CareTeam\_participant-start    | <http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_CareTeam_participant-start> | 1.0     |
| CDS\_CareTeam\_participant-end      | http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS\_CareTeam\_participant-end   | 1.0     |
| CDS\_Patient\_birthplace            | http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS\_Patient\_birthplace         | 1.0     |
| CDS\_PractitionerRole\_nameex       | http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS\_PractitionerRole\_nameex    | 1.0     |
| CDS\_CareTeam\_ManagingOrganization | http://esante.gouv.fr/cisis/fhir/SearchParameter/CareTeamManagingOrganization      | 1.0     |

Tableau 12 SearchParameter pour les paramètres de recherches définis par ce volet

  - CapabilityStatement pour les acteurs identifiés dans l’étude métier du présent volet :

| Acteur                | URL                                                                            | Version |
| --------------------- | ------------------------------------------------------------------------------ | ------- |
| CreateurRestful\[34\] | http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CDS.CreateurRestful     | 2.1     |
| CreateurTransaction   | http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CDS.CreateurTransaction | 2.1     |
| Gestionnaire          | http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CDS.Gestionnaire        | 2.1     |
| Consommateur          | http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/CDS.Consommateur        | 2.1     |

Tableau 14 CapabilityStatements pour les acteurs définis dans ce volet

  - ImplementationGuide

| Nom                          | URL                                                                                | Version |
| ---------------------------- | ---------------------------------------------------------------------------------- | ------- |
| CDS\_Gestion-Cercle-De-Soins | http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.GestionCercleDeSoins | 2.1     |

Tableau 1 4 : ImplementationGuide

<span id="_Toc127530594" class="anchor"></span>Annexe 3 : Exemples

Les exemples sont donnés en utilisant la syntaxe JSON et ne présagent en rien de la syntaxe utilisée par les systèmes mettant en œuvre ce volet.

Ci-joint des fichiers d’exemple correspondant à l’option Restful :

  - pour le flux 1a illustrant la création d’une personne tierce (CdS\_ExempleRestfulCreationRelatedPerson.json ),

  - pour le flux 1b illustrant la création d’un cercle de soins (CdS\_ExempleRestfulCreation.json).

Un exemple correspondant au flux 1c : option Transaction (CdS\_ExempleBundleCreation.json).

Un exemple correspondant au flux 4c : option Transaction (CdS\_ExempleBundleMAJ)

<span id="_Toc127530595" class="anchor"></span>Annexe 4 : Glossaire

| Sigle / Acronyme | Signification                                                |
| ---------------- | ------------------------------------------------------------ |
| API              | Application Programming Interface                            |
| ANS              | Agence du Numérique en Santé                                 |
| CI-SIS           | Cadre d’Interopérabilité des Systèmes d’Information de Santé |
| FHIR             | Fast Healthcare Interoperability Resources                   |
| HL7              | Health Level 7                                               |
| HTTP             | HyperText Transfer Protocol                                  |
| JDV              | Jeu De valeurs                                               |
| JSON             | JavaScript Object Notation                                   |
| MOS              | Modèle des Objets de Santé                                   |
| NOS              | Nomenclatures des Objets de Santé                            |
| REST             | REpresentational State Transfer                              |
| TRE              | Terminologie de REférence                                    |

<span id="_Toc127530596" class="anchor"></span>Annexe 5 : Documents de référence

  - CI-SIS Spécifications Fonctionnelles des Echanges – Gestion du Cercle de Soins

  - CI-SIS Étude des normes et standards – Gestion du Cercle de Soins

  - [IHE Patient Care Coordination Technical Framework Supplement - Dynamic Care Team Management (DCTM) Rev.2.0](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_DCTM_Rev2-0_PC_2019-12-31.pdf)

<span id="_Toc127530597" class="anchor"></span>Annexe 6 : Historique du document

<table>
<thead>
<tr class="header">
<th>Version</th>
<th>Rédigé par</th>
<th>Vérifié par</th>
<th>Validé par</th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1.0.C</td>
<td>GCS eSanté Bretagne</td>
<td>22/03/2021</td>
<td></td>
<td></td>
<td>ANS</td>
<td>22/03/2021</td>
</tr>
<tr class="even">
<td></td>
<td>Motif et nature de la modification : <strong>Publication en concertation publique</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>1.0</td>
<td>GCS eSanté Bretagne</td>
<td>04/09/2021</td>
<td></td>
<td></td>
<td>ANS</td>
<td>04/09/2021</td>
</tr>
<tr class="even">
<td></td>
<td><p>Motif et nature de la modification : <strong>Intégration des commentaires de concertation et des évolutions des profils utilisés pour publication</strong></p>
<ul>
<li><p><em>Profils utilisés</em> : précision des packages sur lesquels le présent volet s’appuie :</p></li>
<li><p>hl7-france-fhir.administrative 9.2021.1</p></li>
<li><p>Modelisationdesstructuresetdesprofessionnels.sept2021 0.1.0.</p></li>
<li><p><em>Tableau 3 Profils utilisés pour les ressources</em> : suite aux évolutions des profils d’Interop’Santé et de l’Annuaire Santé, il n’est plus nécessaire de créer des profils propres à ce volet héritant de :</p></li>
<li><p>FrPatient</p></li>
<li><p>PractitionerRoleOrganizationalRoleRASS</p></li>
<li><p><em>Correspondance entre objets métier et objets du standard HL7 FHIR</em> : Mise à jour des profils FHIR français utilisés dans ce volet suite aux évolutions des profils d’Interop’Santé et Annuaire Santé, en particulier :</p></li>
<li><p>FrPatient</p></li>
<li><p>FrRelatedPerson</p></li>
<li><p>PractitionerRASS</p></li>
<li><p>PractitionerRoleProfessionnalRoleRASS</p></li>
<li><p>PractitionerRoleOrganizationalRoleRASS</p></li>
<li><p>OrganizationRASS</p></li>
<li><p><em>Contenu FHIR des flux structurés</em> : le profil FrPatient n’est pas contraint dans le présent volet mais en termes organisationnels, il est demandé de faire le maximum pour obtenir les informations spécifiées dans les SFE. Il en est de même pour les profils PractitionerRASS, PractitionerRoleProfessionnalRoleRASS, PractitionerRoleOrganizationalRoleRASS et OrganizationRASS.</p></li>
<li><p><em>Construction des flux</em> : obligation pour le gestionnaire d’implémenter les deux options présentées dans les spécifications.</p></li>
<li><p>Ajout d’une annexe : « Annexe II : Ressources de Conformité » qui liste l’ensemble des ressources de conformité créées pour ce volet.</p></li>
</ul></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>1.1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>ANS</td>
<td>01/04/2022</td>
</tr>
<tr class="even">
<td></td>
<td><p>Motif et nature de la modification : <strong>Intégration CP CP-2022_01-MAJ_Volets_FHIR-V1.0 :</strong> <strong>Adoption des mises à jour des profils français publiés par Interop’Santé pour la ressource Patient et du profil français publié par l’équipe Annuaire de l’ANS pour la ressource PractitionerRole.</strong></p>
<ul>
<li><p>Utilisation des packages :</p></li>
<li><p>ANS.annuaire.fhir.r4 0.2.0 pour l’annuaire santé</p></li>
<li><p>package hl7-france-fhir.administrative 11.2021.1 pour les profils d’Interop’Santé</p></li>
<li><p>Passage du profil PractitionerRASS à FrPractitioner</p></li>
<li><p>Passage du profil OrganizationRASS à FrOrganization</p></li>
<li><p>Utilisation des slices « professionG15 », « professionR94 », « professionR95 », « professionR291 » pour l’élément profession de la classe ExerciceProfessionnel</p></li>
<li><p>Utilisation du slice « usualName » pour les éléments nomFamille et prenom de la personne prise en charge</p></li>
<li><p>Mise à jour des exemples</p></li>
</ul></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>1.2</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>ANS</td>
<td>20/01/23</td>
</tr>
<tr class="even">
<td></td>
<td><p>Motif et nature des modifications :</p>
<ul>
<li><p>Adoption des mises à jour des profils français publiés par Interop’Santé Patient, Practitioner, RelatedPerson et Organization : utilisation du package hl7.fhir.fr.core 1.1.0 </p></li>
<li><p>Suppression des paramètres de recherches chainés Ajout d’un paramètre de recherche : managingOrganization</p></li>
<li><p>Ajout d’un nouveau flux pour la mise à jour du cercle de soins</p></li>
<li><p>Création d’une nouvelle ressource de conformité pour la mise à jour du cercle de soins : CDS_BundleTransactionMAJ</p></li>
<li><p>Ajout du paramètre « _iterate » pour le flux de recherche de cercle de soins</p></li>
<li><p>Ajout de la syntaxe retenue XML et JSON</p></li>
<li><p>Mise à jour des versions des ressources de conformité</p></li>
<li><p>Mise à jour des exemples et sortie des exemples du document word</p></li>
</ul></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

1.  https://esante.gouv.fr/sites/default/files/media\_entity/documents/cisis-tec\_specifications\_fonctionnelles\_cercle\_soins\_v1.0.pdf

2.  https://www.ihe.net/uploadedFiles/Documents/PCC/IHE\_PCC\_Suppl\_DCTM\_Rev2-0\_PC\_2019-12-31.pdf

3.  https://www.ihe.net/uploadedFiles/Documents/PCC/IHE\_PCC\_Suppl\_DCTM\_Rev2-0\_PC\_2019-12-31.pdf

4.  https://simplifier.net/packages/hl7.fhir.fr.core/1.1.0

5.  <https://simplifier.net/Modelisationdesstructuresetdesprofessionnels>

6.  <https://github.com/ansforge/ModelisationFHIRdesacteursdesante>

7.  <https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0>

8.  <https://esante.gouv.fr/securite/politique-generale-de-securite-des-systemes-d-information-de-sante>

9.  <http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport>

10. Le concept de cercle de soins a plusieurs dates de mise à jour mais chaque version de la ressource, et donc chaque instance de la ressource, ne peut avoir qu’une seule date de mise à jour

11. La personne prise en charge sera décrite dans une partie spécifique PersonnePriseCharge.

12. Les membres du cercle de soins seront décrits dans une partie spécifique MembreCercleSoins ainsi que dans les ressources références PractionerRole, RelatedPerson et Organization.

13. L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.

14. La structure d’un professionnel sera décrite dans une partie spécifique EntiteGeographique.

15. La structure d’un exercice professionnel sera décrite dans une partie spécifique ExerciceProfessionnel.

16. Le professionnel sera décrit dans une partie spécifique Professionnel.

17. L’entité juridique est décrite dans la partie spécifique EntiteJuridique.

18. La mise en correspondance évoluera de manière à rester cohérente avec le profil ROR en cours d’élaboration.

19. https://hl7.org/fhir/resource.html\#id

20. La valeur transmise par le système producteur de cercle de soins est donnée à titre indicative et sera remplacée par la date de dernière modification automatiquement attribuée par le serveur (https://hl7.org/fhir/resource-definitions.html\#Meta.lastUpdated)

21. https://esante.gouv.fr/securite/annuaire-sante

22. https://www.hl7.org/fhir/http.html\#create

23. https://www.hl7.org/fhir/http.html\#update

24. https://www.hl7.org/fhir/http.html\#trules

25. http://hl7.org/fhir/r4/http.html\#search

26. <https://www.hl7.org/fhir/search.html#include>

27. <https://www.hl7.org/fhir/search.html#elements>

28. <https://www.hl7.org/fhir/search.html>

29. <http://hl7.org/fhir/r4/http.html#read>

30. <https://www.hl7.org/fhir/http.html#vread>

31. <https://www.hl7.org/fhir/http.html#history>

32. https://www.hl7.org/fhir/http.html\#trules

33. https://www.hl7.org/fhir/http.html\#transaction-response

34. Deux CapabilityStatement sont créés pour l’acteur Createur puisque les spécifications autorisent le client à choisir l’une des deux options proposées (Restful ou Transaction).
