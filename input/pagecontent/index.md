### Introduction

#### Présentation du contour fonctionnel

Le cercle de soins permet d’identifier l’ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne.
Le cercle de soins d'une personne peut être échangé pour répondre aux besoins des domaines sanitaire, médico-administratif, médico-social et social.

#### Présentation du contour technique

Ce document présente les spécifications techniques d’interopérabilité nécessaires à la mise en œuvre du volet « Gestion du Cercle de Soins ».

#### Architecture simplifiée

#### Schéma des relations entre ressources


<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="schema-relation-ressources.png" alt="CI-SIS" title="Diagramme de séquence des flux 1a et 4a">
</div>


### Synthèse des flux

### Lectorat cible

Ce guide d'implémentation s’adresse aux développeurs des interfaces interopérables des systèmes implémentant la gestion du cercle de soins ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

### Utilisation de l'IG

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex : cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité...).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la [PGSSI-S](https://esante.gouv.fr/produits-services/pgssi-s)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](https://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI- SIS).

### Sécurité

Les données véhiculées à travers ces flux sont des données à caractère personnel contenant notamment les traits d’identité et coordonnées des patients et des professionnels.

Cette section présente les éventuelles recommandations de sécurité qui s’appliquent au volet Gestion de Cercle de Soins. Il s’agit d’un sous-ensemble lié à la dimension interopérabilité de dispositions de sécurité plus globales visant à couvrir les exigences de sécurité d’un système cible.

Il est du ressort du responsable de traitement du système cible de mettre en œuvre des dispositions de sécurité adaptées à son analyse de risques pour le service. En fonction de sa politique de sécurité, il peut choisir ou pas de mettre en œuvre les dispositions spécifiques décrites dans cette section. Les référentiels de sécurité édités par l’ANS fournissent des recommandations sur ce sujet.

### Auteurs et contributeurs

| Role  | Nom | Organisation |
| --- | --- | --- | --- |
| **Primary Editor** | Clotaire Delanchy | GCS E-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |
