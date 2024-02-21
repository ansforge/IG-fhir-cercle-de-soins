### Cadre juridique et orientations organisationnelles

Ce document présente l'étude de spécifications fonctionnelles des échanges pour la mise en œuvre d’un mécanisme de gestion du cercle de soins d’une personne dans le domaine sanitaire, médico-administratif, médico-social et social. Le cercle de soins permet d’identifier l’ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne.

L’étude menée concerne la modélisation des flux qui existent entre des applications et services numériques de santé accessibles sur ordinateur, smartphone ou tablette qui participent et contribuent à la gestion du cercle de soins d’une personne. Elle englobe les actions d'alimentation et de consultation du cercle de soins d’une personne selon divers critères de recherche qui sont présentés dans ce document.

A noter que les spécifications fonctionnelles des échanges sont des spécifications d’interopérabilité qui n'ont ni vocation à définir la structure interne et l’urbanisation des systèmes d’information ni vocation à aborder la gestion des habilitations. Cette gestion des habilitations relatives à la création, mise à jour et consommation du Cercle de Soins doit faire l'objet d'une étude préalable avant toute implémentation de ces interfaces dans le respect du cadre réglementaire de l'échange et du partage de données de santé.

Par ailleurs, les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. En effet, les aspects relatifs à la sécurité sont du ressort du système d’information les implémentant.

Ces exigences « techniques » sont mises en œuvre par les couches transport et service du CI-SIS.

#### Exemple de cas d'usage

Cette section présente deux exemples, non exclusifs, de l’utilisation d’un cercle de soins. Ces spécifications ne s’appliquent pas uniquement à ces cas d’usages et peuvent faire intervenir des acteurs différents.

**<u>Contexte 1</u> :** *Une personne, âgée de 75 ans et vivant seule à son domicile, est atteinte de troubles cognitifs et souffre d’une maladie chronique inflammatoire des bronches (BPCO). Elle est suivie tous les mois par son médecin traitant qui dispose d’un appui d'un Dispositif d'Appui à la Coordination (DAC) de son territoire pour la coordination et la prise en charge de son patient. Parmi les actions de coordination mises en place par le médecin traitant et le médecin coordinateur du DAC, une infirmière se rend quotidiennement au domicile de la personne pour l’administration des traitements. De même, une kinésithérapeute passe quotidiennement à son domicile pour maintenir son activité physique et renforcer sa capacité respiratoire.*

<u>Cas d'usage 1</u> : La personne est prise en charge pour la première fois par le DAC, qui crée son cercle de soins dans son outil numérique d'appui à la coordination. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

<u>Cas d’usage 2</u> : La personne chute à son domicile et contacte les secours. Elle est prise en charge par une ambulance qui la transporte dans l’unité de soins des urgences d’une structure de santé de son territoire. Le médecin des urgences prend connaissance du cercle de soins de la personne dans le Dossier Patient Informatisé de la structure, ce qui permet à la structure de santé de se mettre en contact avec le médecin traitant de la personne et le DAC pour organiser sa sortie.

<u>Cas d’usage 3</u> : L'infirmière libérale déménage, la personne choisit un nouvel infirmier. Le DAC met à jour le cercle de soins de la personne dans son outil numérique d'appui à la coordination en fonction des nouveaux professionnels intervenants auprès de la personne prise en charge.

**<u>Contexte 2</u> :** *Une personne, âgée de 62 ans, souffre de diabète et est suivie régulièrement par son diabétologue exerçant au sein d’un cabinet libéral. Un suivi avec un diététicien est également mis en place.*

<u>Cas d'usage 1</u> : La personne est prise en charge pour la première fois par le diabétologue qui crée le cercle de soins dans son outil de gestion de cabinet. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

#### Définitions et cadre juridique

##### Cercle de soins

Il n’existe pas de définition juridique du cercle de soins en tant que telle. Le « cercle de soins » d’une personne peut être défini comme le regroupement de personnes, professionnels et structures intervenant dans la prise en charge de la personne dans le domaine sanitaire, médico-administratif, médico-social et social. Le « cercle de soins » d'une personne peut donc être constitué des membres de son équipe de soins, d'autres professionnels, de structures, de ses aidants, de sa personne de confiance ou encore de ses représentants légaux.

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image1.png" alt="Flux1" title="Flux1">
</div>

##### Equipe de soins

La notion d’« équipe de soins » a été définie dans la loi n°2016-41 du 26 Janvier 2016, et dans les textes qui en découlent :

* Décret n°2016-994 du 20 juillet 2016 relatif aux conditions d'échange et de partage d'informations entre professionnels de santé et autres professionnels des champs social et médico-social et à l'accès aux informations de santé à caractère personnel ;
* Décret n°2016-996 du 20 juillet 2016 relatif à la liste des structures de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale dans lesquelles peuvent exercer les membres d'une équipe de soins ;
* Décret n°2016-1349 du 10 octobre 2016 relatif au consentement préalable au partage d’informations entre des professionnels ne faisant pas partie de la même équipe de soins ;
* Arrêté du 25 novembre 2016 fixant le cahier des charges de définition de l’équipe de soins visée au 3 de l’article L. 1110-12 du code de la santé publique.

Selon l’article L. 1110-12 du Code de la Santé Publique, l'équipe de soins est un ensemble de professionnels qui participent directement au profit d'un même patient à la réalisation d'un acte diagnostique, thérapeutique, de compensation du handicap, de soulagement de la douleur ou de prévention de perte d'autonomie, ou aux actions nécessaires à la coordination de plusieurs de ces actes, et qui :

1° Soit exercent dans le même établissement de santé, au sein du service de santé des armées, dans le même établissement ou service social ou médico-social mentionné au I de l'article L. 312-1 du code de l'action sociale et des familles ou dans le cadre d'une structure de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale figurant sur une liste fixée par décret ;

2° Soit se sont vu reconnaître la qualité de membre de l'équipe de soins par le patient qui s'adresse à eux pour la réalisation des consultations et des actes prescrits par un médecin auquel il a confié sa prise en charge ;

3° Soit exercent dans un ensemble, comprenant au moins un professionnel de santé, présentant une organisation formalisée et des pratiques conformes à un cahier des charges fixé par un arrêté du ministre chargé de la santé.

##### Aidant

On retrouve plusieurs définitions juridiques de l' « aidant » proche des personnes prises en charge dans les différents codes juridiques français (Code de l’action sociale et des familles, Code de la sécurité sociale, Code du Travail…).

Si l'on se réfère à sa définition dans le Code de la santé publique, l’article L1111-6-1 précise le statut de l’aidant naturel comme une personne choisie par la personne aidée pour l’accompagner dans les gestes liés à des soins prescrits par un médecin pour favoriser son autonomie.

##### Personne de confiance

La loi du 4 mars 2002 relative aux droits des malades a introduit la notion de « personne de confiance » de la personne prise en charge dans le droit français.

La loi du 2 février 2016 créant de nouveaux droits en faveur des malades et des personnes en fin de vie est venue en préciser les contours codifiés dans l'article L1111-6 du Code de la santé publique.

L'article L1111-6 du Code de la santé publique précise ainsi que toute personne majeure peut désigner une personne de confiance qui peut être un parent, un proche ou le médecin traitant et qui sera consultée au cas où elle-même serait hors d'état d'exprimer sa volonté et de recevoir l'information nécessaire à cette fin. La personne de confiance rend compte de la volonté de la personne. Son témoignage prévaut sur tout autre témoignage. Cette désignation est faite par écrit et cosignée par la personne désignée. Elle est révisable et révocable à tout moment.

Si le patient le souhaite, la personne de confiance l'accompagne dans ses démarches et assiste aux entretiens médicaux afin de l'aider dans ses décisions.

La désignation de la personne de confiance n’est pas obligatoire. Mais dans le cadre du suivi de son patient, le médecin traitant s’assure que son patient est informé de la possibilité de désigner une personne de confiance. Par ailleurs, lors de toute hospitalisation, il est proposé au malade de désigner une personne de confiance. Cette désignation est valable pour la durée de l’hospitalisation, sauf mention contraire du patient.

La désignation de la personne de confiance s’effectue par écrit, sur papier libre ou dans le cadre de la rédaction de directives anticipées.

##### Responsable légal

Un représentant légal est une personne légalement désignée en vue de représenter et de défendre les intérêts d'une autre. Le représentant légal agit au nom et pour le compte de la personne qu'il représente.

Pour l'enfant mineur, sa représentation légale incombe dans l’immense majorité des cas aux personnes qui exercent l'autorité parentale sur l'enfant (Art. 382 du Code Civil).

Lorsque les titulaires de l'autorité parentale ne peuvent plus l'exercer, la loi a envisagé la situation dans laquelle l'enfant mineur est représenté par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 390 à 413 du Code Civil).

Lorsqu'une personne majeure connaît une altération de ses facultés mentales mais aussi corporelles (à la condition qu'elle soit de nature à empêcher l'expression de sa volonté) qui la place dans l'impossibilité de pourvoir seule à ses intérêts, la loi envisage sa protection dans le respect des libertés individuelles selon quatre modes de protection : la sauvegarde de justice, la curatelle, la tutelle et l'habilitation familiale. Dans le cas de la tutelle, la personne majeure est représentée par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 440 et suivants du Code Civil).

##### SI DAC et SI Médecin

SI DAC : toute application ou service numérique utilisé par un DAC à des fins de coordination (service numérique de coordination...)

SI Médecin traitant : toute application ou service numérique utilisé par un Médecin (Logiciel de gestion de cabinet, service numérique de coordination...)

##### Echange et partage de données relatives à un cercle de soins

L’échange et le partage de données relatives à un cercle de soins constituent un traitement de données à caractère personnel, qui entre dans le champ d’application du Règlement Général européen de Protection des Données (RGPD).

#### Lectorat cible

Les lecteurs cibles sont principalement des chefs de projets ainsi que toute personne concernée par la maitrise d’ouvrage et qui spécifie des projets avec des interfaces interopérables.

### Organisation du contexte métier

Le domaine « Cercle de soins » est relatif à la gestion du cercle de soins d’une personne afin d’identifier l’ensemble des personnes, professionnels et structures participant à sa prise en charge dans le domaine sanitaire, médico-administratif, médico-social et social.

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image2.png" alt="Flux1" title="Flux1">
</div>

Figure 1 Organisation du contexte métier de l'étude "Cercle de soins"

Le périmètre de l'étude englobe les processus en couleur sur le diagramme de paquetage.

#### Gestion du cercle de soins

Le domaine « Cercle de soins » contient un groupe de processus qui concerne la gestion du cercle de soins et comprenant les processus relatifs à :  

* La création du cercle de soins d’une personne ;  
* La consultation du cercle de soins d’une personne;  
* La mise à jour du cercle de soins d’une personne.

### Définition des processus collaboratifs

Les acteurs « Système » et « Personne » représentés dans les processus collaboratifs suivants sont donnés à titre d'exemple. Seuls les acteurs « Rôle » sont génériques.

#### Cas d'utilisations

##### Processus collaboratif "Création du cercle de soins"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image3.png" alt="Flux1" title="Flux1">
</div>

Figure 2 : Processus collaboratif "Création du cercle de soins"

<table>
<colgroup>
<col style="margin:auto; width: 22%" />
<col style="margin:auto; width: 77%" />
</colgroup>
<thead>
<tr class="header">
<th>Service attendu</th>
<th>Le créateur du cercle de soins envoie au gestionnaire du cercle de soins une demande de création du cercle de soins de la personne.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pré-conditions</td>
<td>Le créateur du cercle de soins doit au préalable :<br />
- Etre habilité ;<br />
- Vérifier l’absence du cercle de soins de la personne par le gestionnaire du cercle de soins via une demande de consultation ;<br />
- Disposer des paramètres de création de cercle de soins (et en particulier de l’identifiant du patient).</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Contraintes fonctionnelles</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Scénario nominal</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 1 Caractéristiques du processus collaboratif

##### Processus collaboratif "Consultation du cercle de soins"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image4.png" alt="Flux1" title="Flux1">
</div>

Figure 3 : Processus collaboratif "Consultation du cercle de soins"

<table>
<colgroup>
<col style="margin:auto; width: 20%" />
<col style="margin:auto; width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th>Service attendu</th>
<th>Le consommateur du cercle de soins effectue une demande de consultation du cercle de soins de la personne dans le gestionnaire du cercle de soins afin de pouvoir le récupérer.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pré-conditions</td>
<td>Le consommateur du cercle de soins doit au préalable :<br />
- Etre habilité ;<br />
- Disposer des paramètres de la demande de consultation du cercle de soins (et en particulier de l’identifiant du patient).</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Contraintes fonctionnelles</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Scénario nominal</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 2 Caractéristiques du processus collaboratif

##### Processus collaboratif "Mise à jour du cercle de soins"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image5.png" alt="Flux1" title="Flux1">
</div>

Figure 4 : Processus collaboratif "Mise à jour du cercle de soins"

<table>
<colgroup>
<col style="margin:auto; width: 18%" />
<col style="margin:auto; width: 81%" />
</colgroup>
<thead>
<tr class="header">
<th>Service attendu</th>
<th>Le créateur du cercle de soins envoie au gestionnaire du cercle de soins une demande de mise à jour (ajout, mise à jour, suppression, etc) du cercle de soins.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pré-conditions</td>
<td>Le créateur du cercle de soins doit au préalable :<br />
- Etre habilité ;<br />
- Disposer des paramètres de mise à jour du cercle de soins (et en particulier de l’identifiant du patient);<br />
- Dans le cas où il y a plusieurs contributeurs : avoir consulté préalablement la dernière version du cercle de soins de la personne dans le gestionnaire du cercle de soins afin de garantir l’intégrité des informations contenues dans le cercle de soins ;</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Contraintes fonctionnelles</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Scénario nominal</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 3 Caractéristiques du processus collaboratif

#### Liste des acteurs pour l'ensemble des processus

<table>
<colgroup>
<col style="margin:auto; width: 16%" />
<col style="margin:auto; width: 83%" />
</colgroup>
<thead>
<tr class="header">
<th>Acteur</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Créateur</td>
<td><p>Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne.</p>
<p>Exemples de créateur : service numérique d’appui à la coordination (SI DAC, SI Médecin traitant), dossier patient informatisé</p></td>
</tr>
<tr class="even">
<td>Gestionnaire</td>
<td><p>Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins, donne accès aux informations en cas de consultation.</p>
<p>Exemples de gestionnaire : dossier patient informatisé, service numérique de partage de données</p></td>
</tr>
<tr class="odd">
<td>Consommateur</td>
<td><p>Le rôle de consommateur incarné par un système, peut consulter un cercle de soins.</p>
<p>Exemples de consommateur : un dossier patient informatisé, un système de gestion de laboratoire, un système d’information radiologique, un logiciel de gestion de cabinet, un service numérique d’appui à la coordination</p></td>
</tr>
</tbody>
</table>

Table 4 Table des acteurs

### Description des processus collaboratifs et identification des flux

#### Création du cercle de soins

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image6.png" alt="Flux1" title="Flux1">
</div>

Figure 5 : Processus collaboratif "Création du cercle de soins"

##### Description des actions

| Action | Description |
| ----- | ----- |
| Saisir le cercle de soins | Le créateur du cercle de soins saisit les informations relatives au cercle de soins qui ont vocation à être partagées.|
| Envoyer la demande | Après validation de la saisie, le créateur du cercle de soins soumet au gestionnaire du cercle de soins une demande de création du cercle de soins. |
| Créer le cercle de soins  | Le cercle de soins est créé par le gestionnaire du cercle de soins. |

Table 5 Tableau des actions

##### Identification des flux

| Flux | Processus | Emetteur | Récepteur | Périmètre |
| ----- | ----- | ----- | ----- |----- |
| Flux 1 - CreationCercleSoins | Création du cercle de soins | Créateur | Gestionnaire | Oui |

Table 6 Flux

#### Consultation du cercle de soins

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image7.png" alt="Flux1" title="Flux1">
</div>

Figure 6 : Processus collaboratif "Consultation du cercle de soins"

##### Description des actions

| Action | Description |
| ----- | ----- |
| Envoyer une demande de consultation | Le consommateur de cercle de soins envoie une demande de consultation du cercle de soins au gestionnaire du cercle de soins en précisant les critères de sa recherche. |
| Consulter la réponse | Le consommateur consulte les éléments du cercle de soins de l’usager retournés par le gestionnaire du cercle de soins. |
| Rechercher le cercle de soins | Le cercle de soins est recherché par le gestionnaire du cercle de soins selon les critères définis par le consommateur du cercle de soins. |

Table 7 Tableau des actions

##### Identification des flux

| Flux | Processus | Emetteur | Récepteur | Périmètre |
|---------------------------------------|---------------------------------|--------------|--------------|-----------|
| Flux 2 - RechercheCercleSoins         | Consultation du cercle de soins | Consommateur | Gestionnaire | Oui       |
| Flux 3 - ResultatRechercheCercleSoins | Consultation du cercle de soins | Gestionnaire | Consommateur | Oui       |

Table 8 Flux

#### Mise à jour du cercle de soins

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image8.png" alt="Flux1" title="Flux1">
</div>

Figure 7 : Processus collaboratif "Mise à jour du cercle de soins"

##### Description des actions

| Action | Description |
| ----- | ----- |
| Saisir la mise à jour | Le créateur du cercle de soins met à jour les informations relatives au cercle de soins qui ont vocation à être partagées. |
| Envoyer la demande de mise à jour | Après validation de la saisie, le créateur du cercle de soins soumet au gestionnaire du cercle de soins une demande de mise à jour du cercle de soins. |
| Mettre à jour le cercle | Le cercle de soins est mis à jour dans le gestionnaire du cercle de soins. |

Table 9 Tableau des actions

##### Identification des flux

| Flux | Processus | Emetteur | Recepteur | Périmètre |
| ----- | ----- | ----- | ----- | ----- |
| Flux 4 - MiseJourCercleSoins | Mise à jour du cercle de soins | Créateur | Gestionnaire | Oui |

Table 10 Flux

#### Synthèse des flux

| Flux | Processus | Emetteur | Récepteur | Périmètre |
|---------------------------------------|---------------------------------|--------------|--------------|-----------|
| Flux 1 - CreationCercleSoins          | Création du cercle de soins     | Créateur     | Gestionnaire | Oui       |
| Flux 2 - RechercheCercleSoins         | Consultation du cercle de soins | Consommateur | Gestionnaire | Oui       |
| Flux 3 - ResultatRechercheCercleSoins | Consultation du cercle de soins | Gestionnaire | Consommateur | Oui       |
| Flux 4 - MiseJourCercleSoins          | Mise à jour du cercle de soins  | Créateur     | Gestionnaire | Oui       |

Table 11 Synthèse des flux identifiés

###  Identification des concepts véhiculés dans les flux d’informations et correspondance avec les classes et attributs du MOS

#### Concepts métier - Factorisation par concept

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 47%" />
<col style="margin:auto; width: 30%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
<th>Flux</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins</td>
<td>Le Cercle de Soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne. Le Cercle de Soins possède un identifiant, une date de début, une date de fin et une date de mise à jour.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>MembreCercleSoins</td>
<td>Le membre du cercle de soins peut être :<br />
- un professionnel de santé : médecin traitant, pharmacien, infirmière libérale, etc,<br />
- une entité intervenant dans la prise en charge de la personne,<br />
- le responsable légal de la personne prise en charge,<br />
- la personne de confiance de la personne prise en charge,<br />
- l'aidant de la personne prise en charge.<br />
<br />
Le cercle de soins fournit l'identité du membre ainsi qu'un moyen de communication avec lui. Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin de participation à ce cercle.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge</td>
<td>Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Professionnel</td>
<td>Un Professionnel est une personne qui participe à la prise en charge d’une personne.<br />
Le professionnel peut être du domaine sanitaire, médico-administratif, médico-social et social.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>Aidant</td>
<td>L'aidant peut être un membre de la famille ou un proche de la personne.<br />
L'aidant accompagne la personne prise en charge dans les gestes liés à des soins prescrits pour favoriser son autonomie.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>ResponsableLegal</td>
<td>Le responsable légal agit au nom et pour le compte de la personne qu'il représente. Il peut s’agir des parents d’un enfant mineur ou d’un tuteur pour enfant mineur ou personne majeure incapable.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>PersonneConfiance</td>
<td>La personne de confiance est un proche, un parent, qui sera consultée au cas où la personne prise en charge serait hors d'état d'exprimer sa volonté et de recevoir l'information nécessaire à cette fin. La désignation de la personne de confiance n'est pas obligatoire.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Role</td>
<td>Indique la responsabilité du professionnel au sein du Cercle de Soins d’une personne. Il peut s’agir par exemple du rôle de médecin traitant, de médecin coordonnateur, d’infirmier, de pharmacien, etc.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>Entite</td>
<td>L'Entité correspond à la notion d’établissement ou de structure sanitaire, médico-sociale et sociale. Il s’agit par exemple d’un Centre Hospitalier, d’une Clinique, d’une Maison de Santé Pluriprofessionnelle (MSP), d’un Dispositif d’Appui à la Coordination (PTA…), d’un Service de Soins Infirmiers à Domicille (SSIAD), …</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>UniteSoin</td>
<td>L’Unité de Soins est une unité organisationnelle regroupant des activités de soins de santé au sein d’une Entité.</td>
<td><p>Flux 3 - ResultatRechercheCercleSoins</p>
<p>Flux 1 - CreationCercleSoins</p>
<p>Flux 4 - MiseJourCercleSoins</p>
<p>Flux 2 - RechercheCercleSoins</p></td>
</tr>
</tbody>
</table>

Table 12 Concepts métier

##### Mise en équivalence MOS

<table>
<colgroup>
<col style="margin:auto; width: 24%" />
<col style="margin:auto; width: 12%" />
<col style="margin:auto; width: 14%" />
<col style="margin:auto; width: 15%" />
<col style="margin:auto; width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Concept métier</th>
<th>Extension</th>
<th>Restriction</th>
<th>Equivalence</th>
<th>Concept MOS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins</td>
<td>X</td>
<td></td>
<td></td>
<td>Pas de classe correspondante</td>
</tr>
<tr class="even">
<td>MembreCercleSoins</td>
<td>X</td>
<td></td>
<td></td>
<td>Pas de classe correspondante</td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge</td>
<td></td>
<td></td>
<td>X</td>
<td><p>PersonnePriseCharge et</p>
<p>PersonnePhysique</p></td>
</tr>
<tr class="even">
<td>Professionnel</td>
<td></td>
<td>X</td>
<td></td>
<td>Professionnel</td>
</tr>
<tr class="odd">
<td>Aidant</td>
<td></td>
<td>X</td>
<td></td>
<td>Contact</td>
</tr>
<tr class="even">
<td>ResponsableLegal</td>
<td></td>
<td>X</td>
<td></td>
<td>Contact</td>
</tr>
<tr class="odd">
<td>PersonneConfiance</td>
<td></td>
<td>X</td>
<td></td>
<td>Contact</td>
</tr>
<tr class="even">
<td>Role</td>
<td></td>
<td></td>
<td>X</td>
<td>role</td>
</tr>
<tr class="odd">
<td>Entite</td>
<td></td>
<td>X</td>
<td></td>
<td><p>EntiteGeographique et</p>
<p>EntiteJuridique</p></td>
</tr>
<tr class="even">
<td>UniteSoin</td>
<td></td>
<td>X</td>
<td></td>
<td>OrganisationInterne</td>
</tr>
</tbody>
</table>

Table 13 Mise en équivalence MOS

### Modélisation des flux d'informations

#### Flux 1 - CreationCercleSoins

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image10.png" alt="Flux1" title="Flux1">
</div>

Figure 8 Flux 1 - CreationCercleSoins

Les types de données complexes sont décrits dans les classes communes du Modèle des Objets de Santé de l'ANS.

##### Classe "PersonnePriseCharge"

Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager.

<table>
<colgroup>
<col style="margin:auto; width: 29%" />
<col style="margin:auto; width: 70%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>INS : [1..1] INS</td>
<td><p>L'INS référence les données de santé et se compose des éléments suivants :</p>
<p>- Un matricule INS : le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP)</p>
<p>- Des traits d'identité de l'état civil : nom de famille (nom de naissance), prénom (liste des prénoms de naissance), date de naissance, sexe et lieu de naissance ;</p>
<p>- Des traits complémentaires provenant du Référentiel National d'IdentitoVigilance (RNIV) : premier prénom de l'acte de naissance, prénom utilisé et nom utilisé.</p></td>
</tr>
<tr class="even">
<td>idPersonnePriseCharge : [0..*] Identifiant</td>
<td>Identifiant(s) secondaire(s) de la personne prise en charge.</td>
</tr>
<tr class="odd">
<td>adresseCorrespondance : [1..1] Adresse</td>
<td>Adresse(s) de correspondance de la personne prise en charge.</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td>Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, etc.).</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 14 Attributs de la classe "PersonnePriseCharge"

##### Classe "PersonnePhysique"

Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.

<table>
<colgroup>
<col style="margin:auto; width: 24%" />
<col style="margin:auto; width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>civilite : [0..1] Code</td>
<td>Civilité de la personne physique.<br />
<br />
Nomenclature associée :<br />
TRE_R81-Civilite</td>
</tr>
<tr class="even">
<td>nomFamille : [0..1] Texte</td>
<td>Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.<br />
Ref.: Service-public.fr<br />
Synonymes : nom patronymique, nom de naissance.</td>
</tr>
<tr class="odd">
<td>prenom : [0..*] Texte</td>
<td>Prénom(s) de la personne déclarés à sa naissance.</td>
</tr>
<tr class="even">
<td>sexe : [0..1] Code</td>
<td>Sexe de la personne physique, notamment masculin, féminin, inconnu.<br />
<br />
Nomenclature associée :<br />
TRE_R249-Sexe</td>
</tr>
<tr class="odd">
<td>langueParlee : [0..*] LangueParlee</td>
<td>Langue parlée par la personne, y compris le français.</td>
</tr>
<tr class="even">
<td>situationFamiliale : [0..1] Code</td>
<td>Situation familiale de la personne (célibataire, divorcée, etc.).</td>
</tr>
<tr class="odd">
<td>dateNaissance : [0..1] Date</td>
<td>Date de naissance de la personne.</td>
</tr>
<tr class="even">
<td>lieuNaissance : [0..1] Texte</td>
<td>Lieu de naissance de la personne.<br />
Pour les personnes nées en France, il correspond au code officiel géographique (COG) de la commune de naissance. Pour les personnes nées à l’étranger, il s’agit du COG du pays de naissance.</td>
</tr>
<tr class="odd">
<td>paysResidence : [0..1] Code</td>
<td>Pays où séjourne la personne de façon permanente.<br />
<br />
Nomenclature associée :<br />
TRE_R20-Pays</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 15 Attributs de la classe "PersonnePhysique"

##### Classe "Professionnel"

Un Professionnel est une personne qui participe à la prise en charge d’un Usager que ce soit au niveau sanitaire, médico-administratif, médico-social et social.

| Nom | Description |
| ----- | ----- |
| dPP : [0..1] Identifiant | Identifiant national de la personne physique:<br /> ** Pour les professionnels de santé: Numéro RPPS ou ADELI.<br /> ** Pour les étudiants: Numéro RPPS depuis 2017.<br /> Remarque, le numéro Etudiant (identifiant ordinal) n'est plus attribué aux nouveaux étudiants mais peut subsister dans certaines cartes d'étudiant en pharmacie jusqu'à 2022.<br /> ** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure. |
| typeIdNat_PP : [0..1] Code | Type d’identifiant national de la personne physique.<br /><br />Nomenclature associée : TRE_G08-TypeIdentifiantPersonne |
| metadonnee : [1..1] Metadonnee | Informations relatives à la gestion des classes et des données. |

Table 16 Attributs de la classe "Professionnel"

##### Classe "SituationExercice"

Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).

| Nom | Description |
| ----- | ----- |
| modeExercice : [0..1] Code |Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel.<br /> Exemples :<br /> ** Libéral;<br /> ** Salarié;<br /> ** Bénévole<br /><br />Nomenclature associée :<br />TRE_R23-ModeExercice</td>|
| role : [0..1] Code |Rôle du professionnel au sein de la structure d’exercice.<br /><br />Nomenclatures associées :<br />TRE_R21-Fonction<br />TRE_R96-AutreFonctionSanitaire<br />TRE_R85-RolePriseCharge<br />ASS_A20- RolePriseCharge-GenreActivite |
| boiteLettresMSS : [0..*] BoiteLettreMSS | Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice. |
| metadonnee : [1..1] Metadonnee | Informations relatives à la gestion des classes et des données. |

Table 17 Attributs de la classe "SituationExercice"

##### Classe "ExerciceProfessionnel"

Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, militaire, etc.).

Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.

<table>
<colgroup>
<col style="margin:auto; width: 36%" />
<col style="margin:auto; width: 63%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>civiliteExercice : [0..1] Code</td>
<td>Civilité d’exercice du professionnel.<br />
<br />
Nomenclature associée :<br />
TRE_R11-CiviliteExercice</td>
</tr>
<tr class="even">
<td>nomExercice : [0..1] Texte</td>
<td>Nom sous lequel exerce le professionnel.</td>
</tr>
<tr class="odd">
<td>prenomExercice : [0..1] Texte</td>
<td>Prénom sous lequel exerce le professionnel.</td>
</tr>
<tr class="even">
<td>profession : [0..1] Code</td>
<td>Profession exercée ou future profession de l'étudiant.<br />
<br />
Nomenclatures associées :<br />
TRE_G15-ProfessionSante<br />
TRE_R95-UsagerTitre<br />
TRE_R94-ProfessionSocial<br />
TRE_R291-AutreProfession</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 18 Attributs de la classe "ExerciceProfessionnel"

##### Classe "CercleSoins"

Le Cercle de Soins comprend toutes les personnes (Professionnel ou Personne Tierce) et Entités qui participent à la prise en charge et aux actions de coordination du parcours de santé d’un Usager. Le Cercle de Soins possède un statut, une date de début, une date de fin et une date de mise à jour.

<table>
<colgroup>
<col style="margin:auto; width: 19%" />
<col style="margin:auto; width: 80%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>idCercleSoins : [1..1] Identifiant</td>
<td>Identifiant du cercle de soins.</td>
</tr>
<tr class="even">
<td>dateCreation : [1..1] Date</td>
<td>Date de création du cercle de soin.</td>
</tr>
<tr class="odd">
<td>dateMAJ : [1..*] Date</td>
<td>Date de mise à jour du cercle de soin.</td>
</tr>
<tr class="even">
<td>dateFin : [0..1] Date</td>
<td>Date de fin d'existence du cercle de soins.</td>
</tr>
<tr class="odd">
<td>statut : [0..1] Code</td>
<td>Statut du cercle de soin.<br />
<br />
La liste des valeurs possibles n'est pas définie par ces spécifications. Les codes possibles ainsi que le sens donné sont définis par le gestionnaire en fonction du projet. Il peut s'inspirer du jeu de valeur FHIR "CareTeamStatus" (proposed | active | suspended | inactive | entered-in-error).</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 19 Attributs de la classe "CercleSoins"

##### Classe "OrganisationInterne"

L'organisation interne est une unité organisationnelle regroupant des activités de soins de santé au sein d’une Entité.

| Nom | Description |
| ----- | ----- |
| identifiantOI : \[0..1\] Identifiant | Identifiant de l'organisation interne, unique et persistant au niveau national. |
| nom : \[0..1\] Texte | Nom de l'organisation interne. |
| boiteLettresMSS : \[0..\*\] BoiteLettreMSS | Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice. |
| metadonnee : \[1..1\] Metadonnee | Informations relatives à la gestion des classes et des données. |

Table 20 Attributs de la classe "OrganisationInterne"

##### Classe "EntiteJuridique"

L'Entité Juridique (EJ) correspond à la notion de personne morale :

\*\* Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements ; chaque EJ dispose d'un statut juridique de la personne morale ;

\*\* Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro SIREN.

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 78%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>numFINESS : [0..1] Identifiant</td>
<td>Identifiant FINESS de l'entité juridique attribué lors de sa création.<br />
Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).</td>
</tr>
<tr class="even">
<td>numSIREN : [0..1] Identifiant</td>
<td>Le numéro SIREN est le numéro unique d'identification attribué à chaque entreprise ou organisme par l'INSEE.</td>
</tr>
<tr class="odd">
<td>idNat_struct : [0..1] Identifiant</td>
<td>Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS.</td>
</tr>
<tr class="even">
<td>identifiantEJ : [0..1] Identifiant</td>
<td>Identifiant spécifique de l’entité juridique d’un cabinet individuel ou d’un cabinet de groupe dont l’entité géographique est identifiée par l’attribut identifiantEG.</td>
</tr>
<tr class="odd">
<td>raisonSociale : [0..1] Texte</td>
<td>La raison sociale est le nom de l'entité juridique.<br />
Elle figure obligatoirement dans les statuts de l'EJ.</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td>Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice.</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 21 Attributs de la classe "EntiteJuridique"

##### Classe "EntiteGeographique"

L'Entité Géographique (EG) correspond à la notion d'établissement :

\*\* Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères :

\- Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation.  
Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu.

\- Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).  
Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse.

\- Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.  
Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.

\*\* Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro SIRET.

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 78%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>numFINESS : [0..1] Identifiant</td>
<td>Numéro FINESS de l'entité géographique.<br />
Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification des entités géographiques en tant qu’acteurs sanitaires et médico-sociaux par rapport au numéro SIRET (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).</td>
</tr>
<tr class="even">
<td>numSIRET : [0..1] Identifiant</td>
<td>Le numéro SIRET est le numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique.</td>
</tr>
<tr class="odd">
<td>identifiantEG : [0..1] Identifiant</td>
<td>Identifiant spécifique généré par le RPPS ou ADELI lors de la création d'une structure d'exercice pour un cabinet individuel et un cabinet de groupe. Il est communément connu sous le nom de RPPS-rang ou ADELI-rang.</td>
</tr>
<tr class="even">
<td>idNat_struct : [0..1] Identifiant</td>
<td>Identification nationale de l'Entité géographique initiée pour les besoins du SI-CPS.</td>
</tr>
<tr class="odd">
<td>denominationEG : [0..1] Texte</td>
<td>Nom sous lequel l'entité géographique exerce son activité.<br />
Il s’agit, par exemple, de l’enseigne commerciale pour les pharmacies.<br />
Dans le cas d'un établissement enregistré dans le FINESS, cet attribut correspond à la notion de "raison sociale d'un établissement" renseignée dans le FINESS.</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td>Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice.</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 22 Attributs de la classe "EntiteGeographique"

##### Classe "Contact"

Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager…

<table>
<colgroup>
<col style="margin:auto; width: 22%" />
<col style="margin:auto; width: 77%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>role : [1..1] Code</td>
<td>Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager. Il peut s’agir par exemple du rôle d’aidant, de personne de confiance, de responsable légal.<br />
<br />
Utilisation des codes :<br />
* GUARD = Responsable légal<br />
* QUAL = Personne de confiance<br />
* CAREGIVER = Aidant<br />
<br />
Nomenclature utilisée :<br />
TRE_R260-HL7RoleClass</td>
</tr>
<tr class="even">
<td>description : [0..1] Texte</td>
<td>Une description du contact.</td>
</tr>
<tr class="odd">
<td>relation : [0..1] Code</td>
<td>Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc.</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 23 Attributs de la classe "Contact"

##### Classe "MembreCercleSoin"

Il s’agit d’une personne (Professionnel ou Personne Tierce) ou d’une Entité qui fait partie du Cercle de Soins d’un Usager. Chaque membre du Cercle de Soins dispose d’une date de début et une date de fin de participation à ce cercle.

<table>
<colgroup>
<col style="margin:auto; width: 38%" />
<col style="margin:auto; width: 61%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>idMembreCercleSoin : [1..1] Identifiant</td>
<td>Identifiant du membre du cercle de soins.</td>
</tr>
<tr class="even">
<td>dateEntreeCercleSoin : [1..*] Date</td>
<td>Date de début de participation au cercle de soin de la personne prise en charge.</td>
</tr>
<tr class="odd">
<td>dateSortieCercleSoin : [0..*] Date</td>
<td>Date de fin de participation au cercle de soin de la personne prise en charge.</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td>Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) :<br />
- rattachée(s) à la situation d'exercice.<br />
- du contact</td>
</tr>
<tr class="odd">
<td>adresse : [0..*] Adresse</td>
<td>Adresse(s) géopostale(s) :<br />
- rattachée(s) à la situation d'exercice.<br />
- du point de contact.</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Informations relatives à la gestion des classes et des données.</td>
</tr>
</tbody>
</table>

Table 24 Attributs de la classe "MembreCercleSoin"

##### Règle de gestion

Lorsque la PersonnePhysique représente un Professionnel, ne pas considérer les attributs situationFamiliale, lieuNaissance et paysResidence.

#### Flux 3 - ResultatRechercheCercleSoins

Le modèle du flux est identique au flux 1.

#### Flux 4 - MiseJourCercleSoins

Le modèle du flux est identique au flux 1.

#### Flux de recherche : Flux 2 - RechercheCercleSoins

<table>
<colgroup>
<col style="margin:auto; width: 43%" />
<col style="margin:auto; width: 42%" />
<col style="margin:auto; width: 14%" />
</colgroup>
<thead>
<tr class="header">
<th>Nom</th>
<th>Description</th>
<th>Obligatoire</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins/idCercleSoins</td>
<td>Identifiant du cercle de soins.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>CercleSoins/dateCreation</td>
<td>Date de création du cercle de soin.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>CercleSoins/dateFin</td>
<td>Date de fin d'existence du cercle de soins.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>CercleSoins/dateMAJ</td>
<td>Date de mise à jour du cercle de soin.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>CercleSoins/statut</td>
<td>Statut du cercle de soin.<br />
<br />
La liste des valeurs possibles n'est pas définie par ces spécifications. Les codes possibles ainsi que le sens donné sont définis par le gestionnaire en fonction du projet. Il peut s'inspirer du jeu de valeur FHIR "CareTeamStatus" (proposed | active | suspended | inactive | entered-in-error).</td>
<td>Non</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td>Identifiant du membre du cercle de soins.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td><p>MembreCercleSoin/</p>
<p>dateEntreeCercleSoin</p></td>
<td>Date de début de participation au cercle de soin de la personne prise en charge.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/dateSortieCercleSoin</td>
<td>Date de fin de participation au cercle de soin de la personne prise en charge.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge/INS</td>
<td>L'INS référence les données de santé et se compose des éléments suivants :<br />
- Un matricule INS : le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP)<br />
- Des traits d'identité de l'état civil : nom de famille (nom de naissance), prénom (liste des prénoms de naissance), date de naissance, sexe et lieu de naissance ;<br />
- Des traits complémentaires provenant du Référentiel National d'IdentitoVigilance (RNIV) : premier prénom de l'acte de naissance, prénom utilisé et nom utilisé.</td>
<td>Non</td>
</tr>
<tr class="even">
<td><p>PersonnePriseCharge/</p>
<p>idPersonnePriseCharge</p></td>
<td>Identifiant(s) secondaire(s) de la personne prise en charge.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td><p>PersonnePriseCharge/</p>
<p>adresseCorrespondance</p></td>
<td>Adresse(s) de correspondance de la personne prise en charge.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>PersonnePhysique/nomFamille</td>
<td>Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.<br />
Ref.: Service-public.fr<br />
Synonymes : nom patronymique, nom de naissance.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/prenom</td>
<td>Prénom(s) de la personne déclarés à sa naissance.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>PersonnePhysique/dateNaissance</td>
<td>Date de naissance de la personne.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>SituationExercice/role</td>
<td>Rôle du professionnel au sein de la structure d’exercice.<br />
<br />
Nomenclatures associées :<br />
TRE_R21-Fonction<br />
TRE_R96-AutreFonctionSanitaire<br />
TRE_R85-RolePriseCharge<br />
ASS_A20- RolePriseCharge-GenreActivite</td>
<td>Non</td>
</tr>
<tr class="even">
<td>ExerciceProfessionnel/nomExercice</td>
<td>Nom sous lequel exerce le professionnel.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>ExerciceProfessionnel/profession</td>
<td>Profession exercée ou future profession de l'étudiant.<br />
<br />
Nomenclatures associées :<br />
TRE_G15-ProfessionSante<br />
TRE_R95-UsagerTitre<br />
TRE_R94-ProfessionSocial<br />
TRE_R291-AutreProfession</td>
<td>Non</td>
</tr>
<tr class="even">
<td>Professionnel/idPP</td>
<td>Identifiant national de la personne physique:<br />
** Pour les professionnels de santé: Numéro RPPS ou ADELI.<br />
** Pour les étudiants: Numéro RPPS depuis 2017.<br />
Remarque, le numéro Etudiant (identifiant ordinal) n'est plus attribué aux nouveaux étudiants mais peut subsister dans certaines cartes d'étudiant en pharmacie jusqu'à 2022.<br />
** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/denominationEG</td>
<td>Nom sous lequel l'entité géographique exerce son activité.<br />
Il s’agit, par exemple, de l’enseigne commerciale pour les pharmacies.<br />
Dans le cas d'un établissement enregistré dans le FINESS, cet attribut correspond à la notion de "raison sociale d'un établissement" renseignée dans le FINESS.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>EntiteGeographique/numFINESS</td>
<td>Numéro FINESS de l'entité géographique.<br />
Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification des entités géographiques en tant qu’acteurs sanitaires et médico-sociaux par rapport au numéro SIRET (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/numSIRET</td>
<td>Le numéro SIRET est le numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>EntiteGeographique/identifiantEG</td>
<td>Identifiant spécifique généré par le RPPS ou ADELI lors de la création d'une structure d'exercice pour un cabinet individuel et un cabinet de groupe. Il est communément connu sous le nom de RPPS-rang ou ADELI-rang.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/idNat_struct</td>
<td>Identification nationale de l'Entité géographique initiée pour les besoins du SI-CPS.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>EntiteJuridique/raisonSociale</td>
<td>La raison sociale est le nom de l'entité juridique.<br />
Elle figure obligatoirement dans les statuts de l'EJ.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/numFINESS</td>
<td>Identifiant FINESS de l'entité juridique attribué lors de sa création.<br />
Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).</td>
<td>Non</td>
</tr>
<tr class="even">
<td>EntiteJuridique/numSIREN</td>
<td>Le numéro SIREN est le numéro unique d'identification attribué à chaque entreprise ou organisme par l'INSEE.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/idNat_struct</td>
<td>Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>EntiteJuridique/identifiantEJ</td>
<td>Identifiant spécifique de l’entité juridique d’un cabinet individuel ou d’un cabinet de groupe dont l’entité géographique est identifiée par l’attribut identifiantEG.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>OrganisationInterne/identifiantOI</td>
<td>Identifiant de l'organisation interne, unique et persistant au niveau national.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>OrganisationInterne/nom</td>
<td>Nom de l'organisation interne.</td>
<td>Non</td>
</tr>
<tr class="odd">
<td>Contact/nom</td>
<td>Un nom de la personne à contacter.</td>
<td>Non</td>
</tr>
<tr class="even">
<td>Contact/role</td>
<td>Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager. Il peut s’agir par exemple du rôle d’aidant, de personne de confiance, de responsable légal.<br />
<br />
Utilisation des codes :<br />
* GUARD = Responsable légal<br />
* QUAL = Personne de confiance<br />
* CAREGIVER = Aidant<br />
<br />
Nomenclature utilisée :<br />
TRE_R260-HL7RoleClass</td>
<td>Non</td>
</tr>
</tbody>
</table>

Table 26 Flux de recherche

### Illustrations

#### Diagramme de séquence Interaction

Illustration du cas d'usage présenté à l'étape 0.

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image11.png" alt="Flux1" title="Flux1">
</div>

#### Diagramme de séquence Interaction

Autre illustration du cas d’usage avec SI DAC en tant que créateur & gestionnaire, Dossier Patient Informatisé et SI Médecin traitant en tant que consommateur

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image12.png" alt="Flux1" title="Flux1">
</div>

#### Diagramme d'objet du flux 1.

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image13.png" alt="Flux1" title="Flux1">
</div>