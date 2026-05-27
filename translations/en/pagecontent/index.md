<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>CDS Implementation Guide</b><br>
This implementation guide contains the profiles to share a patient's CareTeam.
</p>

The Care Team (Cercle de Soins) identifies all actors (individuals, healthcare professionals and organisations) involved in the care coordination and health journey of a patient.
A patient's Care Team can be exchanged to address the needs of the healthcare, administrative, medico-social and social domains.

### Profiled Resources

The list below shows the available profiles.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Profile Title", Description FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}

<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>

### Transaction Flows Summary

| Flow | Process | Sender | Receiver |
|------|---------|--------|----------|
| Flow 1 - CareTeamCreation | CareTeam Creation | Creator | Manager |
| Flow 2 - CareTeamSearch | CareTeam Consultation | Consumer | Manager |
| Flow 3 - CareTeamSearchResult | CareTeam Consultation | Manager | Consumer |
| Flow 4 - CareTeamUpdate | CareTeam Update | Creator | Manager |

### Guide Usage

This implementation guide is intended for developers of interoperable interfaces for systems implementing care team management, or for anyone involved in setting up such interfaces.

The interoperability specifications presented in this guide do not prejudge the conditions of their implementation within a shared information system. It is the responsibility of each data controller to ensure that services using these specifications comply with applicable frameworks and best practices (e.g. legal framework, security best practices, ergonomics, accessibility...).

Security constraints on exchanged flows are not covered in this document. These are the responsibility of each implementer, who is obliged to comply with the applicable legal framework.

### Dependencies

{% lang-fragment dependency-table.xhtml %}

### Intellectual Property

{% lang-fragment ip-statements.xhtml %}

### Authors and Contributors

| Role  | Name | Organisation |
| --- | --- | --- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |
