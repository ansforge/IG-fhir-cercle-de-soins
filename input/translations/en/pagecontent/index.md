<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>CDS Implementation Guide</b><br>
This implementation guide contains the profiles to share about a patient CareTeam.
</p>

<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Warning!</b> This Implementation Guide is not the current version. The current version is available via the canonical URL (http://interop.esante.gouv.fr/ig/fhir/cds).
    </p>
    </blockquote>
</div>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="ci-sis-logo.png" alt="CI-SIS" title="CI-SIS Logo">
</div>

The care circle allows identifying all stakeholders (people, professionals, and organizations) involved in the care and coordination actions of the patient's health journey.
A person's care circle can be exchanged to meet the needs of the healthcare, medico-administrative, medico-social, and social fields.

### Profiled Resources

The list below shows the list of profiles.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Profile Title", Description FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}

<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>

### Flows Summary

| Flow | Process | Sender | Receiver |
|------|-----------|----------|-----------|
| Flow 1 - CreationCercleSoins | CDS Creation | Creator | Manager |
| Flow 2 - RechercheCercleSoins | CDS Consultation | Consumer | Manager |
| Flow 3 - ResultatRechercheCercleSoins | CDS Consultation | Manager | Consumer |
| Flow 4 - MiseJourCercleSoins | CDS Update | Creator | Manager |

| Flow                                      | Commentary |
|-------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Flow 1a - CreationActeurRestful, Flow 1b - CreationCercleSoinsRestful | These two flows have been separated to distinguish the creation of actors from the creation of care circles in the Restful construction option. |
| Flow 1c – CreationCercleSoinsTransaction  | This flow has been separated from flows 1a and 1b as it corresponds to the creation of a care circle in the Transaction construction option            |
| Flow 2a - RechercheCercleSoins, Flow 2b - RecuperationCercleSoins | These flows have been separated to distinguish the search for care circles meeting defined criteria from the request to retrieve a specific care circle |
| Flow 3a - ResultatRechercheCercleSoins    | Response to flow 2a |
| Flow 3b - ResultatRecuperationCercleSoins | Response to flow 2b |
| Flow 4a - MiseJourActeurRestful, Flow 4b - MiseJourCercleSoinsRestful | These two flows have been separated to distinguish the update of actors from the update of care circles in the Restful construction option. |
| Flow 4c – MAJCercleSoinsTransaction       | This flow has been separated to distinguish updates in the Transaction construction option |

### IG Usage

This implementation guide is intended for developers of interoperable interfaces of systems implementing care circle management or any other person involved in the process of setting up these interfaces.

The interoperability specifications presented in this section do not anticipate the conditions for their implementation within the framework of a shared information system. It is the responsibility of any data controller to ensure that the services using these specifications comply with the applicable frameworks and best practices for this type of service (e.g., legal framework, security best practices, ergonomics, accessibility...).

It should be noted that the security constraints concerning the exchanged flows are not addressed in this document. These are the responsibility of each implementer of the mechanism, who is obliged to comply with the legal framework in this matter. The ANS provides dedicated references for the security policy ([PGSSI-S](https://esante.gouv.fr/produits-services/pgssi-s)) and security mechanisms are defined in the sections of the [Transport Layer](https://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) of the Interoperability Framework for Health Information Systems (CI-SIS).

### Implementation Scenarios

The urbanization scheme for care circle management can be centralized or distributed:

* The users' care circles can be stored and managed centrally by a single system identified as the care circle manager at the national or regional level, for example.
* The users' care circles can be stored and managed in a distributed manner. Several systems can thus play the role of care circle manager in a given territory. In this case, mechanisms for identifying the managers and the care circles they manage and possibly synchronizing them must be implemented.

These interoperability specifications apply regardless of the urbanization scheme adopted.

### Dependencies

{% lang-fragment dependency-table.xhtml %}

### Intellectual Property

{% lang-fragment ip-statements.xhtml %}

### Authors and Contributors

| Role  | Name | Organization |
| --- | --- | --- | --- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |