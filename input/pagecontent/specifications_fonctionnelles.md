# Spécifications fonctionnelles

## Cadre juridique et orientations organisationnelles

Ce document présente l'étude de spécifications fonctionnelles des échanges pour la mise en œuvre d'un mécanisme de gestion du cercle de soins d'une personne dans le domaine sanitaire, médico-administratif,médico-social et social. Le cercle de soins permet d'identifier l'ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne.

L'étude menée concerne la modélisation des flux qui existent entre des applications et services numériques de santé accessibles sur ordinateur, smartphone ou tablette qui participent et contribuent à la gestion du cercle de soins d'une personne. Elle englobe les actions d'alimentation et de consultation du cercle de soins d'une personne selon divers critères de recherche qui sont présentés dans ce document.

À noter que les spécifications fonctionnelles des échanges sont des spécifications d'interopérabilité qui n'ont ni vocation à définir la structure interne et l'urbanisation des systèmes d'information ni vocation à aborder la gestion des habilitations. Cette gestion des habilitations relatives à la création, mise à jour et consommation du Cercle de Soins doit faire l\'objet d\'une étude préalable avant toute implémentation de ces interfaces dans le respect du cadre réglementaire de l\'échange et du partage de données de santé.

Par ailleurs, les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. En effet, les aspects relatifs à la sécurité sont du ressort du système d'information les implémentant.

Ces exigences « techniques » sont mises en œuvre par les couches transport et service du CI-SIS.

### Exemple de cas d'usage

Cette section présente deux exemples, non exclusifs, de l'utilisation d'un cercle de soins. Ces spécifications ne s'appliquent pas uniquement à ces cas d'usages et peuvent faire intervenir des acteurs différents.

**[Contexte 1 :]{.underline}** *Une personne, âgée de 75 ans et vivant seule à son domicile, est atteinte de troubles cognitifs et souffre d'une maladie chronique inflammatoire des bronches (BPCO). Elle est suivie tous les mois par son médecin traitant qui dispose d'un appui d\'un Dispositif d\'Appui à la Coordination (DAC) de son territoire pour la coordination et la prise en charge de son patient. Parmi les actions de coordination mises en place par le médecin traitant et le médecin coordinateur du DAC, une infirmière se rend quotidiennement au domicile de la personne pour l'administration des traitements. De même, une kinésithérapeute passe quotidiennement à son domicile pour maintenir son activité physique et renforcer sa capacité respiratoire.*

[Cas d\'usage 1]{.underline} : La personne est prise en charge pour la première fois par le DAC, qui crée son cercle de soins dans son outil numérique d\'appui à la coordination. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

[Cas d'usage 2]{.underline} : La personne chute à son domicile et contacte les secours. Elle est prise en charge par une ambulance qui la transporte dans l'unité de soins des urgences d'une structure de santé de son territoire. Le médecin des urgences prend connaissance du cercle de soins de la personne dans le Dossier Patient Informatisé de la structure, ce qui permet à la structure de santé de se mettre en contact avec le médecin traitant de la personne et le DAC pour organiser sa sortie.

[Cas d'usage 3]{.underline} : L\'infirmière libérale déménage, la personne choisit un nouvel infirmier. Le DAC met à jour le cercle de soins de la personne ans son outil numérique d\'appui à la coordination en fonction des nouveaux professionnels intervenants auprès de la personne prise en charge.

**[Contexte 2 :]{.underline}** *Une personne, âgée de 62 ans, souffre de diabète et est suivie régulièrement par son diabétologue exerçant au sein d'un cabinet libéral. Un suivi avec un diététicien est également mis en place.*

[Cas d\'usage 1]{.underline} : La personne est prise en charge pour la première fois par le diabétologue qui crée le cercle de soins dans son outil de gestion de cabinet. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

### Définitions et cadre juridique

#### Cercle de soins

Il n’existe pas de définition juridique du cercle de soins en tant que telle. Le « cercle de soins » d’une personne peut être défini comme le regroupement de personnes, professionnels et structures intervenant dans la prise en charge de la personne dans le domaine sanitaire, médico-administratif, médico-social et social. Le « cercle de soins » d'une personne peut donc être constitué des membres de son équipe de soins, d'autres professionnels, de structures, de ses aidants, de sa personne de confiance ou encore de ses représentants légaux.

![Image du Cercle de Soins]()

#### Équipe de soins

La notion d’« équipe de soins » a été définie dans la loi n°2016-41 du 26 Janvier 2016, et dans les
textes qui en découlent :

* décret n°2016-994 du 20 juillet 2016 relatif aux conditions d'échange et de partage d'informations entre professionnels de santé et autres professionnels des champs social et médico-social et à l'accès aux informations de santé à caractère personnel ;
* décret n°2016-996 du 20 juillet 2016 relatif à la liste des structures de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale dans lesquelles peuvent exercer les membres d'une équipe de soins ;
* décret n°2016-1349 du 10 octobre 2016 relatif au consentement préalable au partage d’informations entre des professionnels ne faisant pas partie de la même équipe de soins ;
* arrêté du 25 novembre 2016 fixant le cahier des charges de définition de l’équipe de soins visée au 3 de l’article L. 1110-12 du code de la santé publique.

Selon l’article L. 1110-12 du Code de la Santé Publique, l'équipe de soins est un ensemble de professionnels qui participent directement au profit d'un même patient à la réalisation d'un acte diagnostique, thérapeutique, de compensation du handicap, de soulagement de la douleur ou de prévention de perte d'autonomie, ou aux actions nécessaires à la coordination de plusieurs de ces actes, et qui :

1° Soit exercent dans le même établissement de santé, au sein du service de santé des armées, dans le même établissement ou service social ou médico-social mentionné au I de l'article L. 312-1 du code de l'action sociale et des familles ou dans le cadre d'une structure de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale figurant sur une liste fixée par décret ;

2° Soit se sont vu reconnaître la qualité de membre de l'équipe de soins par le patient qui s'adresse
à eux pour la réalisation des consultations et des actes prescrits par un médecin auquel il a confié sa
prise en charge ;

3° Soit exercent dans un ensemble, comprenant au moins un professionnel de santé, présentant une
organisation formalisée et des pratiques conformes à un cahier des charges fixé par un arrêté du
ministre chargé de la santé.

#### Aidant

On retrouve plusieurs définitions juridiques de l' « aidant » proche des personnes prises en charge dans les différents codes juridiques français (Code de l’action sociale et des familles, Code de la sécurité sociale, Code du Travail...).

Si l'on se réfère à sa définition dans le Code de la santé publique, l’article L1111-6-1 précise le statut de l’aidant naturel comme une personne choisie par la personne aidée pour l’accompagner dans les gestes liés à des soins prescrits par un médecin pour favoriser son autonomie.

#### Personne de confiance

La loi du 4 mars 2002 relative aux droits des malades a introduit la notion de « personne de confiance » de la personne prise en charge dans le droit français.

La loi du 2 février 2016 créant de nouveaux droits en faveur des malades et des personnes en fin de vie est venue en préciser les contours codifiés dans l'article L1111-6 du Code de la santé publique.

L'article L1111-6 du Code de la santé publique précise ainsi que toute personne majeure peut désigner une personne de confiance qui peut être un parent, un proche ou le médecin traitant et qui sera consultée au cas où elle-même serait hors d'état d'exprimer sa volonté et de recevoir l'information nécessaire à cette fin. La personne de confiance rend compte de la volonté de la personne. Son témoignage prévaut sur tout autre témoignage. Cette désignation est faite par écrit et cosignée par la personne désignée. Elle est révisable et révocable à tout moment.

Si le patient le souhaite, la personne de confiance l'accompagne dans ses démarches et assiste aux entretiens médicaux afin de l'aider dans ses décisions.

La désignation de la personne de confiance n’est pas obligatoire. Mais dans le cadre du suivi de son patient, le médecin traitant s’assure que son patient est informé de la possibilité de désigner une personne de confiance. Par ailleurs, lors de toute hospitalisation, il est proposé au malade de désigner une personne de confiance. Cette désignation est valable pour la durée de l’hospitalisation, sauf mention contraire du patient.

La désignation de la personne de confiance s’effectue par écrit, sur papier libre ou dans le cadre de la rédaction de directives anticipées.

#### Responsable légal

Un représentant légal est une personne légalement désignée en vue de représenter et de défendre les intérêts d'une autre. Le représentant légal agit au nom et pour le compte de la personne qu'il représente.

Pour l'enfant mineur, sa représentation légale incombe dans l’immense majorité des cas aux personnes qui exercent l'autorité parentale sur l'enfant (Art. 382 du Code Civil).

Lorsque les titulaires de l'autorité parentale ne peuvent plus l'exercer, la loi a envisagé la situation dans laquelle l'enfant mineur est représenté par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 390 à 413 du Code Civil).

Lorsqu'une personne majeure connaît une altération de ses facultés mentales mais aussi corporelles (à la condition qu'elle soit de nature à empêcher l'expression de sa volonté) qui la place dans l'impossibilité de pourvoir seule à ses intérêts, la loi envisage sa protection dans le respect des libertés individuelles selon quatre modes de protection : la sauvegarde de justice, la curatelle, la tutelle et l'habilitation familiale. Dans le cas de la tutelle, la personne majeure est représentée par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 440 et suivants du Code Civil).

#### SI DAC et SI Médecin

SI DAC : toute application ou service numérique utilisé par un DAC à des fins de coordination (service numérique de coordination...).

SI Médecin traitant : toute application ou service numérique utilisé par un Médecin (Logiciel de gestion de cabinet, service numérique de coordination...).

#### Échange et partage de données relatives à un cercle de soins

L’échange et le partage de données relatives à un cercle de soins constituent un traitement de données à caractère personnel, qui entre dans le champ d’application du Règlement Général européen de Protection des Données (RGPD).

## Organisation du contexte métier

Le domaine « Cercle de soins » est relatif à la gestion du cercle de soins d’une personne afin d’identifier l’ensemble des personnes, professionnels et structures participant à sa prise en charge dans le domaine sanitaire, médico-administratif, médico-social et social.

# DIAGRAMME DE PROCESSUS : Figure 1 Organisation du contexte métier de l'étude "Cercle de soins"

Le périmètre de l'étude englobe les processus en couleur sur le diagramme de paquetage.

### Gestion du cercle de soins

Le domaine « Cercle de soins » contient un groupe de processus qui concerne la gestion du cercle de soins et comprenant les processus relatifs à :

* la création du cercle de soins d’une personne ;
* la consultation du cercle de soins d’une personne ;
* la mise à jour du cercle de soins d’une personne.

## Définition des processus collaboratifs

Les acteurs « Système » et « Personne » représentés dans les processus collaboratifs suivants sont donnés à titre d'exemple. Seuls les acteurs « Rôle » sont génériques.

### Cas d'utilisations

#### Processus collaboratif "Création du cercle de soins"

Figure 2 : Processus collaboratif "Création du cercle de soins"

Tableau

#### Processus collaboratif "Consultation du cercle de soins"

Figure + tableau

#### Processus collaboratif "Mise à jour du cercle de soins"

Figure + tableau

### Liste des acteurs pour l'ensemble des processus

+--------------+------------------------------------------------------+
| Acteur       | Description                                          |
+==============+======================================================+
| Créateur     | Le rôle de créateur incarné par un système peut      |
|              | créer ou mettre à jour le cercle de soins d\'une     |
|              | personne.                                            |
|              |                                                      |
|              | Exemples de créateur : service numérique d'appui à   |
|              | la coordination (SI DAC, SI Médecin traitant),       |
|              | dossier patient informatisé                          |
+--------------+------------------------------------------------------+
| Gestionnaire | Le rôle de gestionnaire incarné par un système, gère |
|              | et stocke le cercle de soins, donne accès aux        |
|              | informations en cas de consultation.                 |
|              |                                                      |
|              | Exemples de gestionnaire : dossier patient           |
|              | informatisé, service numérique de partage de données |
+--------------+------------------------------------------------------+
| Consommateur | Le rôle de consommateur incarné par un système, peut |
|              | consulter un cercle de soins.                        |
|              |                                                      |
|              | Exemples de consommateur : un dossier patient        |
|              | informatisé, un système de gestion de laboratoire,   |
|              | un système d'information radiologique, un logiciel   |
|              | de gestion de cabinet, un service numérique d'appui  |
|              | à la coordination                                    |
+--------------+------------------------------------------------------+

## Description des processus collaboratifs et identification des flux

### Création du cercle de soins

UML

#### Description des actions

#### Identification des flux

### Consultation du cercle de soins

UML

#### Description des actions

#### Identification des flux

### Mise à jour du cercle de soins

UML

#### Description des actions

#### Identification des flux

### Synthèse des flux

Flux                                    Processus                         Emetteur       Récepteur      Périmètre
--------------------------------------- --------------------------------- -------------- -------------- -----------
Flux 1 - CreationCercleSoins            Création du cercle de soins       Créateur       Gestionnaire   Oui
Flux 2 - RechercheCercleSoins           Consultation du cercle de soins   Consommateur   Gestionnaire   Oui
Flux 3 - ResultatRechercheCercleSoins   Consultation du cercle de soins   Gestionnaire   Consommateur   Oui
Flux 4 - MiseJourCercleSoins            Mise à jour du cercle de soins    Créateur       Gestionnaire   Oui

## Identification des concepts véhiculés dans le flux d'informations et correspondance avec les classes et attributs du MOS

### Concept métier - Factorisation par concept

+---------------------+----------------------+----------------------+
| Nom                 | Description          | Flux                 |
+=====================+======================+======================+
| CercleSoins         | Le Cercle de Soins   | Flux 3 -             |
|                     | est l\'agrégation de | Resultat             |
|                     | membres qui          | RechercheCercleSoins |
|                     | participent à la     |                      |
|                     | prise en charge et   | Flux 1 -             |
|                     | aux actions de       | CreationCercleSoins  |
|                     | coordination du      |                      |
|                     | parcours de santé    | Flux 4 -             |
|                     | d'une personne. Le   | MiseJourCercleSoins  |
|                     | Cercle de Soins      |                      |
|                     | possède un           | Flux 2 -             |
|                     | identifiant, une     | RechercheCercleSoins |
|                     | date de début, une   |                      |
|                     | date de fin et une   |                      |
|                     | date de mise à jour. |                      |
+---------------------+----------------------+----------------------+
| MembreCercleSoins   | Le membre du cercle  | Flux 3 -             |
|                     | de soins peut être   | Resultat             |
|                     | :\                   | RechercheCercleSoins |
|                     | - un professionnel   |                      |
|                     | de santé : médecin   | Flux 1 -             |
|                     | traitant,            | CreationCercleSoins  |
|                     | pharmacien,          |                      |
|                     | infirmière libérale, | Flux 4 -             |
|                     | etc,\                | MiseJourCercleSoins  |
|                     | - une entité         |                      |
|                     | intervenant dans la  | Flux 2 -             |
|                     | prise en charge de   | RechercheCercleSoins |
|                     | la personne,\        |                      |
|                     | - le responsable     |                      |
|                     | légal de la personne |                      |
|                     | prise en charge,\    |                      |
|                     | - la personne de     |                      |
|                     | confiance de la      |                      |
|                     | personne prise en    |                      |
|                     | charge,\             |                      |
|                     | - l\'aidant de la    |                      |
|                     | personne prise en    |                      |
|                     | charge.\             |                      |
|                     | \                    |                      |
|                     | Le cercle de soins   |                      |
|                     | fournit l\'identité  |                      |
|                     | du membre ainsi      |                      |
|                     | qu\'un moyen de      |                      |
|                     | communication avec   |                      |
|                     | lui. Chaque membre   |                      |
|                     | du Cercle de Soins   |                      |
|                     | dispose d'une date   |                      |
|                     | de début et une date |                      |
|                     | de fin de            |                      |
|                     | participation à ce   |                      |
|                     | cercle.              |                      |
+---------------------+----------------------+----------------------+
| PersonnePriseCharge | Personne physique    | Flux 3 -             |
|                     | bénéficiaire de      | Resultat             |
|                     | soins, d\'examens,   | RechercheCercleSoins |
|                     | d\'actes de          |                      |
|                     | prévention ou de     | Flux 1 -             |
|                     | services.            | CreationCercleSoins  |
|                     |                      |                      |
|                     |                      | Flux 4 -             |
|                     |                      | MiseJourCercleSoins  |
|                     |                      |                      |
|                     |                      | Flux 2 -             |
|                     |                      | RechercheCercleSoins |
+---------------------+----------------------+----------------------+
| Professionnel       | Un Professionnel est | Flux 3 -             |
|                     | une personne qui     | Resultat             |
|                     | participe à la prise | RechercheCercleSoins |
|                     | en charge d'une      |                      |
|                     | personne.\           | Flux 1 -             |
|                     | Le professionnel     | CreationCercleSoins  |
|                     | peut être du domaine |                      |
|                     | sanitaire,           | Flux 4 -             |
|                     | m                    | MiseJourCercleSoins  |
|                     | édico-administratif, |                      |
|                     | médico-social et     | Flux 2 -             |
|                     | social.              | RechercheCercleSoins |
+---------------------+----------------------+----------------------+
| Aidant              | L\'aidant peut être  | Flux 3 -             |
|                     | un membre de la      | Resultat             |
|                     | famille ou un proche | RechercheCercleSoins |
|                     | de la personne.\     |                      |
|                     | L\'aidant accompagne | Flux 1 -             |
|                     | la personne prise en | CreationCercleSoins  |
|                     | charge dans les      |                      |
|                     | gestes liés à des    | Flux 4 -             |
|                     | soins prescrits pour | MiseJourCercleSoins  |
|                     | favoriser son        |                      |
|                     | autonomie.           | Flux 2 -             |
|                     |                      | RechercheCercleSoins |
+---------------------+----------------------+----------------------+
| ResponsableLegal    | Le responsable légal | Flux 3 -             |
|                     | agit au nom et pour  | Resultat             |
|                     | le compte de la      | RechercheCercleSoins |
|                     | personne qu\'il      |                      |
|                     | représente. Il peut  | Flux 1 -             |
|                     | s'agir des parents   | CreationCercleSoins  |
|                     | d'un enfant mineur   |                      |
|                     | ou d'un tuteur pour  | Flux 4 -             |
|                     | enfant mineur ou     | MiseJourCercleSoins  |
|                     | personne majeure     |                      |
|                     | incapable.           | Flux 2 -             |
|                     |                      | RechercheCercleSoins |
+---------------------+----------------------+----------------------+
| PersonneConfiance   | La personne de       | Flux 3 -             |
|                     | confiance est un     | Resultat             |
|                     | proche, un parent,   | RechercheCercleSoins |
|                     | qui sera consultée   |                      |
|                     | au cas où la         | Flux 1 -             |
|                     | personne prise en    | CreationCercleSoins  |
|                     | charge serait hors   |                      |
|                     | d\'état d\'exprimer  | Flux 4 -             |
|                     | sa volonté et de     | MiseJourCercleSoins  |
|                     | recevoir             |                      |
|                     | l\'information       | Flux 2 -             |
|                     | nécessaire à cette   | RechercheCercleSoins |
|                     | fin. La désignation  |                      |
|                     | de la personne de    |                      |
|                     | confiance n\'est pas |                      |
|                     | obligatoire.         |                      |
+---------------------+----------------------+----------------------+
| Role                | Indique la           | Flux 3 -             |
|                     | responsabilité du    | Resultat             |
|                     | professionnel au     | RechercheCercleSoins |
|                     | sein du Cercle de    |                      |
|                     | Soins d'une          | Flux 1 -             |
|                     | personne. Il peut    | CreationCercleSoins  |
|                     | s'agir par exemple   |                      |
|                     | du rôle de médecin   | Flux 4 -             |
|                     | traitant, de médecin | MiseJourCercleSoins  |
|                     | coordonnateur,       |                      |
|                     | d'infirmier, de      | Flux 2 -             |
|                     | pharmacien, etc.     | RechercheCercleSoins |
+---------------------+----------------------+----------------------+
| Entite              | L\'Entité correspond | Flux 3 -             |
|                     | à la notion          | Resultat             |
|                     | d'établissement ou   | RechercheCercleSoins |
|                     | de structure         |                      |
|                     | sanitaire,           | Flux 1 -             |
|                     | médico-sociale et    | CreationCercleSoins  |
|                     | sociale. Il s'agit   |                      |
|                     | par exemple d'un     | Flux 4 -             |
|                     | Centre Hospitalier,  | MiseJourCercleSoins  |
|                     | d'une Clinique,      |                      |
|                     | d'une Maison de      | Flux 2 -             |
|                     | Santé                | RechercheCercleSoins |
|                     | Pluriprofessionnelle |                      |
|                     | (MSP), d'un          |                      |
|                     | Dispositif d'Appui à |                      |
|                     | la Coordination      |                      |
|                     | (PTA...), d'un       |                      |
|                     | Service de Soins     |                      |
|                     | Infirmiers à         |                      |
|                     | Domicille (SSIAD),   |                      |
|                     | ...                  |                      |
+---------------------+----------------------+----------------------+
| UniteSoin           | L'Unité de Soins est | Flux 3 -             |
|                     | une unité            | Resultat             |
|                     | organisationnelle    | RechercheCercleSoins |
|                     | regroupant des       |                      |
|                     | activités de soins   | Flux 1 -             |
|                     | de santé au sein     | CreationCercleSoins  |
|                     | d'une Entité.        |                      |
|                     |                      | Flux 4 -             |
|                     |                      | MiseJourCercleSoins  |
|                     |                      |                      |
|                     |                      | Flux 2 -             |
|                     |                      | RechercheCercleSoins |
+---------------------+----------------------+----------------------+

#### Mise en équivalence MOS

+-------------+-----------+-------------+-------------+-------------+
| Concept     | Extension | Restriction | Equivalence | Concept MOS |
| métier      |           |             |             |             |
+=============+===========+=============+=============+=============+
| CercleSoins | X         |             |             | Pas de      |
|             |           |             |             | classe      |
|             |           |             |             | cor         |
|             |           |             |             | respondante |
+-------------+-----------+-------------+-------------+-------------+
| Membre      | X         |             |             | Pas de      |
| CercleSoins |           |             |             | classe      |
|             |           |             |             | cor         |
|             |           |             |             | respondante |
+-------------+-----------+-------------+-------------+-------------+
| Personne    |           |             | X           | Personne    |
| PriseCharge |           |             |             | PriseCharge |
|             |           |             |             | et          |
|             |           |             |             |             |
|             |           |             |             | Perso       |
|             |           |             |             | nnePhysique |
+-------------+-----------+-------------+-------------+-------------+
| Pr          |           | X           |             | Pr          |
| ofessionnel |           |             |             | ofessionnel |
+-------------+-----------+-------------+-------------+-------------+
| Aidant      |           | X           |             | Contact     |
+-------------+-----------+-------------+-------------+-------------+
| Respo       |           | X           |             | Contact     |
| nsableLegal |           |             |             |             |
+-------------+-----------+-------------+-------------+-------------+
| Person      |           | X           |             | Contact     |
| neConfiance |           |             |             |             |
+-------------+-----------+-------------+-------------+-------------+
| Role        |           |             | X           | role        |
+-------------+-----------+-------------+-------------+-------------+
| Entite      |           | X           |             | EntiteG     |
|             |           |             |             | eographique |
|             |           |             |             | et          |
|             |           |             |             |             |
|             |           |             |             | Enti        |
|             |           |             |             | teJuridique |
+-------------+-----------+-------------+-------------+-------------+
| UniteSoin   |           | X           |             | Organisa    |
|             |           |             |             | tionInterne |
+-------------+-----------+-------------+-------------+-------------+

## Modélisation des flux d'informations

### Flux 1 - CreationCercleSoins

Les types de données complexes sont décrits dans les classes communes du Modèle des Objets de Santé de l\'ANS.
