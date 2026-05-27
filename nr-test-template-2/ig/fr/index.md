# Accueil - Cercle De Soins v2.0.1

## Accueil

 **CDS Implementation Guide**
 This implementation guide contains the profiles to share about a patient CareTeam. 

>  **Attention !** Cet Implementation Guide n'est pas la version courante. La version courante est accessible via l'URL canonique (http://interop.esante.gouv.fr/ig/fhir/cds). 

Le cercle de soins permet d’identifier l’ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne. Le cercle de soins d'une personne peut être échangé pour répondre aux besoins des domaines sanitaire, médico-administratif, médico-social et social.

### Ressources profilées

La liste ci-dessous expose la liste des profils.

| | |
| :--- | :--- |
| Titre du profil | Description |
| [CDS Bundle Response Recherche Profile](StructureDefinition-cds-bundle-response-recherche.md) | Profil « Bundle » de type « searchset » encapsulant une collection de 0, une ou plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET. |
| [CDS Bundle Transaction Creation Profile](StructureDefinition-cds-bundle-transaction-creation.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour créer un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type `transaction` permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS Bundle Transaction MAJ Profile](StructureDefinition-cds-bundle-transaction-maj.md) | Profil défini dans le volet de Gestion du Cercle de Soins (flux 1c) pour mettre à jour un cercle de soins selon l’option Transaction. Il s'agit d'un bundle de type "transaction" permettant d'organiser le contenu du flux de création d'un cercle de soins. |
| [CDS Fr RelatedPerson Profile](StructureDefinition-cds-fr-related-person.md) | Profil créé pour le volet Gestion du Cercle de Soins afin de décrire les contacts du sujet du cercle de soins (aidant, personne de confiance…). |
| [CDS CareTeam Profile](StructureDefinition-cds-ihe-careteam.md) | Profil héritant du profil défini dans DCTM et défini pour le volet Gestion du Cercle de Soins. Le concept métier « cercle de soins » correspond à la ressource FHIR « CareTeam ». |
| [CDS Organization Profile](StructureDefinition-cds-organization.md) | Profil organization adapté au cercle de soins. Ce profil peut modéliser une entité juridique (EJ), une entité géographique (EG) ou une organisation interne (OI) |


### Synthèse des flux

| | | | |
| :--- | :--- | :--- | :--- |
| Flux 1 - CreationCercleSoins | Création CDS | Créateur | Gestionnaire |
| Flux 2 - RechercheCercleSoins | Consultation CDS | Consommateur | Gestionnaire |
| Flux 3 - ResultatRechercheCercleSoins | Consultation CDS | Gestionnaire | Consommateur |
| Flux 4 - MiseJourCercleSoins | Mise à jour CDS | Créateur | Gestionnaire |

| | |
| :--- | :--- |
| Flux 1a - CreationActeurRestful, Flux 1b - CreationCercleSoinsRestful | Ces deux flux ont été dissociés pour séparer la création des acteurs de la création des cercles de soins dans l’option de construction Restful. |
| Flux 1c – CreationCercleSoinsTransaction | Ce flux a été dissocié des flux 1a et 1b car il correspond à la création d’un cercle de soins dans l’option de construction Transaction |
| Flux 2a - RechercheCercleSoins, Flux 2b - RecuperationCercleSoins | Ces flux ont été dissociés de manière à distinguer la recherche de cercles de soins répondant à des critères définis de la demande de la récupération d’un cercle de soins particulier |
| Flux 3a - ResultatRechercheCercleSoins | Réponse au flux 2a |
| Flux 3b - ResultatRecuperationCercleSoins | Réponse au flux 2b |
| Flux 4a - MiseJourActeurRestful, Flux 4b - MiseJourCercleSoinsRestful | Ces deux flux ont été dissociés pour séparer la mise à jour des acteurs de la mise à jour des cercles de soins dans l’option de construction Restful. |
| Flux 4c – MAJCercleSoinsTransaction | Ce flux a été dissocié pour séparer les mises à jour dans l’option de construction Transaction |

### Utilisation de l'IG

Ce guide d'implémentation s’adresse aux développeurs des interfaces interopérables des systèmes implémentant la gestion du cercle de soins ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex : cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la [PGSSI-S](https://esante.gouv.fr/produits-services/pgssi-s)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](https://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI- SIS).

### Scénarios d'implémentation

Le schéma d’urbanisation de la gestion du cercle de soins peut être centralisé ou distribué :

* Les cercles de soins des usagers peuvent être stockés et gérés de manière centralisée par un système unique identifié comme gestionnaire du cercle de soins au niveau national ou régional par exemple.
* Les cercles de soins des usagers peuvent être stockés et gérés de manière distribuée. Plusieurs systèmes peuvent ainsi jouer le rôle de gestionnaire du cercle de soins dans un territoire donné. Dans ce cas, des mécanismes d’identification des gestionnaires et des cercles de soins qu’ils gèrent et éventuellement de synchronisation entre eux doivent être mis en place.

Ces spécifications d’interopérabilité s’appliquent quel que soit le schéma d’urbanisation adopté.

### Dépendances









### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.2.0/CodeSystem-ISO3166Part1.html): [CDS](index.md), [CDSAsOrganization](StructureDefinition-cds-organization.md)... Show 16 more, [CDSBundleResponseRecherche](StructureDefinition-cds-bundle-response-recherche.md), [CDSBundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md), [CDSBundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md), [CDSCareTeam](StructureDefinition-cds-ihe-careteam.md), [CDSCareTeamEnd](SearchParameter-cds-careteam-end.md), [CDSCareTeamManagingOrganization](SearchParameter-cds-careteam-managing-organization.md), [CDSCareTeamParticipantEnd](SearchParameter-cds-careteam-participant-end.md), [CDSCareTeamParticipantStart](SearchParameter-cds-careteam-participant-start.md), [CDSCareTeamStart](SearchParameter-cds-careteam-start.md), [CDSFrRelatedPerson](StructureDefinition-cds-fr-related-person.md), [CDSPatientBirthplace](SearchParameter-cds-patient-birthplace.md), [CareTeamRolesValueSet](ValueSet-careteam-roles-vs.md), [CreateurTransaction-cds](CapabilityStatement-CDSCreateurTransaction.md), [consommateur-cds](CapabilityStatement-CDSConsommateur.md), [createur-restful-cds](CapabilityStatement-CDSCreateurRestful.md) and [gestionnaire-cds](CapabilityStatement-CDSGestionnaire.md)


### Auteurs et contributeurs

| | | |
| :--- | :--- | :--- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |

