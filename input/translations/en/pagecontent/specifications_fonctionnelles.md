### Legal Framework and Organizational Guidelines

This document presents the study of functional specifications for exchanges to implement a mechanism for managing the circle of care for an individual in the healthcare, medico-administrative, medico-social, and social fields. The circle of care allows identifying all the stakeholders (individuals, professionals, and organizations) participating in the care and coordination actions of the individual's health journey.

The study conducted concerns the modeling of flows that exist between digital health applications and services accessible via computer, smartphone, or tablet that participate and contribute to managing the circle of care for an individual. It encompasses actions of feeding and consulting the circle of care of an individual according to various search criteria presented in this document.

Note that the functional specifications for exchanges are interoperability specifications that do not aim to define the internal structure and urbanization of information systems nor to address the management of authorizations. The management of authorizations related to the creation, updating, and consumption of the Circle of Care must be the subject of a prior study before any implementation of these interfaces in compliance with the regulatory framework for the exchange and sharing of health data.

Furthermore, the security constraints concerning the exchanged flows are not addressed in this document. Indeed, the aspects related to security are the responsibility of the information system implementing them.

These "technical" requirements are implemented by the transport and service layers of the CI-SIS.

#### Example Use Cases

This section presents two non-exclusive examples of using a circle of care. These specifications do not apply only to these use cases and can involve different actors.

**<u>Context 1</u>:** *A 75-year-old person, living alone at home, suffers from cognitive disorders and has a chronic inflammatory lung disease (COPD). They are followed monthly by their general practitioner, who has the support of a Coordination Support Device (DAC) in their territory for coordinating and managing their patient. Among the coordination actions set up by the general practitioner and the coordinating doctor of the DAC, a nurse visits the person's home daily to administer treatments. Similarly, a physiotherapist visits daily to maintain their physical activity and strengthen their respiratory capacity.*

<u>Use Case 1</u>: The person is taken care of for the first time by the DAC, which creates their circle of care in their digital coordination support tool. All the professionals intervening with the person being cared for are listed in the circle of care with their contact details.

<u>Use Case 2</u>: The person falls at home and contacts the emergency services. They are taken care of by an ambulance that transports them to the emergency care unit of a healthcare facility in their territory. The emergency doctor becomes aware of the person's circle of care in the facility's Electronic Patient Record, which allows the healthcare facility to contact the person's general practitioner and the DAC to organize their discharge.

<u>Use Case 3</u>: The self-employed nurse moves, the person chooses a new nurse. The DAC updates the person's circle of care in their digital coordination support tool according to the new professionals intervening with the person being cared for.

**<u>Context 2</u>:** *A 62-year-old person suffers from diabetes and is regularly followed by their diabetologist practicing in a private clinic. Follow-up with a dietitian is also set up.*

<u>Use Case 1</u>: The person is taken care of for the first time by the diabetologist, who creates the circle of care in their clinic management tool. All the professionals intervening with the person being cared for are listed in the circle of care with their contact details.

#### Definitions and Legal Framework

##### Circle of Care

There is no legal definition of the circle of care as such. The "circle of care" of an individual can be defined as the grouping of individuals, professionals, and organizations intervening in the care of the individual in the healthcare, medico-administrative, medico-social, and social fields. The "circle of care" of an individual can therefore consist of members of their care team, other professionals, organizations, their caregivers, their trusted person, or their legal representatives.

<div class="figure" style="margin:auto; width:65%;">
    <img src="sf_image1.png" alt="Flux1" title="Flux1">
</div>

##### Care Team

The notion of "care team" was defined in Law No. 2016-41 of January 26, 2016, and in the texts that follow from it:

* Decree No. 2016-994 of July 20, 2016, on the conditions for exchanging and sharing information between healthcare professionals and other professionals in the social and medico-social fields and on access to personal health information;
* Decree No. 2016-996 of July 20, 2016, on the list of cooperative structures, shared practice, or sanitary or medico-social coordination in which members of a care team may practice;
* Decree No. 2016-1349 of October 10, 2016, on prior consent to the sharing of information between professionals not belonging to the same care team;
* Order of November 25, 2016, setting out the terms of reference for defining the care team referred to in 3 of Article L. 1110-12 of the Public Health Code.

According to Article L. 1110-12 of the Public Health Code, the care team is a group of professionals who directly participate, for the benefit of the same patient, in the performance of a diagnostic, therapeutic, compensatory for disability, pain relief, or prevention of loss of autonomy act, or in the actions necessary for the coordination of several of these acts, and who:

1° Either practice in the same healthcare establishment, within the health service of the armed forces, in the same social or medico-social establishment or service mentioned in I of Article L. 312-1 of the Social Action and Families Code or within the framework of a cooperative structure, shared practice, or sanitary or medico-social coordination appearing on a list set by decree;

2° Or have been recognized as members of the care team by the patient who turns to them for the performance of consultations and acts prescribed by a doctor to whom they have entrusted their care;

3° Or practice in an entity, including at least one healthcare professional, presenting a formalized organization and practices in accordance with a terms of reference set by an order of the minister responsible for health.

##### Caregiver

Several legal definitions of the "caregiver" close to the individuals being cared for can be found in the various French legal codes (Social Action and Families Code, Social Security Code, Labor Code...).

If we refer to its definition in the Public Health Code, Article L1111-6-1 specifies the status of the natural caregiver as a person chosen by the person being cared for to accompany them in the gestures related to care prescribed by a doctor to promote their autonomy.

##### Trusted Person

The law of March 4, 2002, relating to the rights of patients introduced the notion of "trusted person" of the person being cared for in French law.

The law of February 2, 2016, creating new rights in favor of patients and persons at the end of life came to specify its contours codified in Article L1111-6 of the Public Health Code.

Article L1111-6 of the Public Health Code thus specifies that any adult person may designate a trusted person who may be a parent, a relative, or the treating doctor and who will be consulted in the event that they themselves are unable to express their will and to receive the information necessary for this purpose. The trusted person reports the will of the person. Their testimony prevails over any other testimony. This designation is made in writing and co-signed by the designated person. It is revocable and revocable at any time.

If the patient wishes, the trusted person accompanies them in their procedures and attends medical consultations in order to help them in their decisions.

The designation of the trusted person is not mandatory. However, in the context of following their patient, the treating doctor ensures that their patient is informed of the possibility of designating a trusted person. Furthermore, upon any hospitalization, it is proposed to the patient to designate a trusted person. This designation is valid for the duration of the hospitalization, unless the patient states otherwise.

The designation of the trusted person is made in writing, on plain paper or as part of the drafting of advance directives.

##### Legal Representative

A legal representative is a person legally designated to represent and defend the interests of another. The legal representative acts on behalf of and for the account of the person they represent.

For the minor child, their legal representation is incumbent, in the vast majority of cases, on the persons who exercise parental authority over the child (Art. 382 of the Civil Code).

When the holders of parental authority can no longer exercise it, the law has envisaged the situation in which the minor child is represented by a third party (the guardian), responsible for representing and defending their interests (Art. 390 to 413 of the Civil Code).

When a person of legal age experiences an alteration of their mental faculties but also physical faculties (provided that it is of a nature to prevent the expression of their will) that places them in the inability to provide for their interests alone, the law envisages their protection while respecting individual freedoms according to four modes of protection: guardianship, curatorship, tutorship, and family authorization. In the case of tutorship, the person of legal age is represented by a third party (the guardian), responsible for representing and defending their interests (Art. 440 and following of the Civil Code).

##### DAC IS and Doctor IS

DAC IS: any application or digital service used by a DAC for coordination purposes (digital coordination service...)

Doctor IS: any application or digital service used by a Doctor (Practice Management Software, digital coordination service...)

##### Exchange and Sharing of Data Related to a Circle of Care

The exchange and sharing of data related to a circle of care constitute a processing of personal data, which falls within the scope of application of the European General Data Protection Regulation (GDPR).

#### Target Audience

The target readers are primarily project managers as well as any person involved in the project ownership and who specifies projects with interoperable interfaces.

### Organization of the Business Context

The "Circle of Care" domain relates to the management of the circle of care for an individual in order to identify all the individuals, professionals, and organizations participating in their care in the healthcare, medico-administrative, medico-social, and social fields.

<div class="figure" style="margin:auto; width:65%;">
    <img src="sf_image2.png" alt="Flux1" title="Flux1">
</div>

Figure 1 Organization of the business context of the "Circle of Care" study

The scope of the study includes the processes in color on the package diagram.

#### Management of the Circle of Care

The "Circle of Care" domain contains a group of processes related to the management of the circle of care, including processes related to:

* The creation of the circle of care for an individual;
* The consultation of the circle of care for an individual;
* The update of the circle of care for an individual.

### Definition of Collaborative Processes

The "System" and "Person" actors represented in the following collaborative processes are given as examples. Only the "Role" actors are generic.

#### Use Cases

##### Collaborative Process "Creation of the Circle of Care"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image3.png" alt="Flux1" title="Flux1">
</div>

Figure 2: Collaborative Process "Creation of the Circle of Care"

<table>
<colgroup>
<col style="margin:auto; width: 22%" />
<col style="margin:auto; width: 77%" />
</colgroup>
<thead>
<tr class="header">
<th>Expected Service</th>
<th>The creator of the circle of care sends a request to the manager of the circle of care to create the circle of care for the person.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pre-conditions</td>
<td>The creator of the circle of care must first:<br />
- Be authorized;<br />
- Verify the absence of the circle of care for the person by the manager of the circle of care via a consultation request;<br />
- Have the parameters for creating the circle of care (and in particular the patient's identifier).</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Functional Constraints</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Nominal Scenario</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 1 Characteristics of the collaborative process

##### Collaborative Process "Consultation of the Circle of Care"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image4.png" alt="Flux1" title="Flux1">
</div>

Figure 3: Collaborative Process "Consultation of the Circle of Care"

<table>
<colgroup>
<col style="margin:auto; width: 20%" />
<col style="margin:auto; width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th>Expected Service</th>
<th>The consumer of the circle of care makes a request to consult the circle of care of the person in the manager of the circle of care in order to be able to retrieve it.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pre-conditions</td>
<td>The consumer of the circle of care must first:<br />
- Be authorized;<br />
- Have the parameters of the request to consult the circle of care (and in particular the patient's identifier).</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Functional Constraints</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Nominal Scenario</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 2 Characteristics of the collaborative process

##### Collaborative Process "Update of the Circle of Care"

<div class="figure" style="margin:auto; width:65%;">
    <img style="height: auto; width: 100%;" src="sf_image5.png" alt="Flux1" title="Flux1">
</div>

Figure 4: Collaborative Process "Update of the Circle of Care"

<table>
<colgroup>
<col style="margin:auto; width: 18%" />
<col style="margin:auto; width: 81%" />
</colgroup>
<thead>
<tr class="header">
<th>Expected Service</th>
<th>The creator of the circle of care sends a request to the manager of the circle of care to update (add, update, delete, etc.) the circle of care.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Pre-conditions</td>
<td>The creator of the circle of care must first:<br />
- Be authorized;<br />
- Have the parameters for updating the circle of care (and in particular the patient's identifier);<br />
- In the case where there are multiple contributors: have previously consulted the latest version of the circle of care for the person in the manager of the circle of care in order to guarantee the integrity of the information contained in the circle of care;</td>
</tr>
<tr class="even">
<td>Post-conditions</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>Functional Constraints</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>Nominal Scenario</td>
<td>N/A</td>
</tr>
</tbody>
</table>

Table 3 Characteristics of the collaborative process

#### List of Actors for All Processes

<table>
<colgroup>
<col style="margin:auto; width: 16%" />
<col style="margin:auto; width: 83%" />
</colgroup>
<thead>
<tr class="header">
<th>Actor</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Creator</td>
<td><p>The creator role embodied by a system can create or update the circle of care for a person.</p>
<p>Examples of creators: digital coordination support service (DAC IS, General Practitioner IS), electronic patient record</p></td>
</tr>
<tr class="even">
<td>Manager</td>
<td><p>The manager role embodied by a system manages and stores the circle of care and provides access to information in case of consultation.</p>
<p>Examples of managers: electronic patient record, digital data sharing service</p></td>
</tr>
<tr class="odd">
<td>Consumer</td>
<td><p>The consumer role embodied by a system can consult a circle of care.</p>
<p>Examples of consumers: an electronic patient record, a laboratory management system, a radiological information system, a practice management software, a digital coordination support service</p></td>
</tr>
</tbody>
</table>

Table 4 Table of actors

### Description of Collaborative Processes and Identification of Flows

#### Creation of the Circle of Care

<div class="figure" style="margin:auto; width:65%;">
    <img src="sf_image6.png" alt="Flux1" title="Flux1">
</div>

Figure 5: Collaborative Process "Creation of the Circle of Care"

##### Description of Actions

| Action | Description |
| ----- | ----- |
| Enter the Circle of Care | The creator of the circle of care enters the information related to the circle of care that is intended to be shared. |
| Send the Request | After validating the entry, the creator of the circle of care submits a request to create the circle of care to the manager of the circle of care. |
| Create the Circle of Care | The circle of care is created by the manager of the circle of care. |

Table 5 Table of actions

##### Identification of Flows

| Flow | Process | Sender | Receiver | Scope |
| ----- | ----- | ----- | ----- |----- |
| Flow 1 - CreationCercleSoins | Creation of the Circle of Care | Creator | Manager | Yes |

Table 6 Flows

#### Consultation of the Circle of Care

<div class="figure" style="margin:auto; width:65%;">
    <img src="sf_image7.png" alt="Flux1" title="Flux1">
</div>

Figure 6: Collaborative Process "Consultation of the Circle of Care"

##### Description of Actions

| Action | Description |
| ----- | ----- |
| Send a Consultation Request | The consumer of the circle of care sends a request to consult the circle of care to the manager of the circle of care, specifying the criteria for their search. |
| Consult the Response | The consumer consults the elements of the user's circle of care returned by the manager of the circle of care. |
| Search for the Circle of Care | The circle of care is searched for by the manager of the circle of care according to the criteria defined by the consumer of the circle of care. |

Table 7 Table of actions

##### Identification of Flows

| Flow | Process | Sender | Receiver | Scope |
|---------------------------------------|---------------------------------|--------------|--------------|-----------|
| Flow 2 - RechercheCercleSoins         | Consultation of the Circle of Care | Consumer | Manager | Yes       |
| Flow 3 - ResultatRechercheCercleSoins | Consultation of the Circle of Care | Manager | Consumer | Yes       |

Table 8 Flows

#### Update of the Circle of Care

<div class="figure" style="margin:auto; width:65%;">
    <img src="sf_image8.png" alt="Flux1" title="Flux1">
</div>

Figure 7: Collaborative Process "Update of the Circle of Care"

##### Description of Actions

| Action | Description |
| ----- | ----- |
| Enter the Update | The creator of the circle of care updates the information related to the circle of care that is intended to be shared. |
| Send the Update Request | After validating the entry, the creator of the circle of care submits a request to update the circle of care to the manager of the circle of care. |
| Update the Circle | The circle of care is updated in the manager of the circle of care. |

Table 9 Table of actions

##### Identification of Flows

| Flow | Process | Sender | Receiver | Scope |
| ----- | ----- | ----- | ----- | ----- |
| Flow 4 - MiseJourCercleSoins | Update of the Circle of Care | Creator | Manager | Yes |

Table 10 Flows

#### Summary of Flows

| Flow | Process | Sender | Receiver | Scope |
|---------------------------------------|---------------------------------|--------------|--------------|-----------|
| Flow 1 - CreationCercleSoins          | Creation of the Circle of Care     | Creator     | Manager | Yes       |
| Flow 2 - RechercheCercleSoins         | Consultation of the Circle of Care | Consumer | Manager | Yes       |
| Flow 3 - ResultatRechercheCercleSoins | Consultation of the Circle of Care | Manager | Consumer | Yes       |
| Flow 4 - MiseJourCercleSoins          | Update of the Circle of Care  | Creator     | Manager | Yes       |

Table 11 Summary of identified flows

### Identification of Concepts Carried in Information Flows and Correspondence with MOS Classes and Attributes

#### Business Concepts - Factorization by Concept

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 47%" />
<col style="margin:auto; width: 30%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Flow</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins</td>
<td>The Circle of Care is the aggregation of members who participate in the care and coordination actions of the health journey of an individual. The Circle of Care has an identifier, a start date, an end date, and an update date.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>MembreCercleSoins</td>
<td>The member of the circle of care can be:<br />
- a healthcare professional: general practitioner, pharmacist, self-employed nurse, etc.,<br />
- an entity intervening in the care of the person,<br />
- the legal representative of the person being cared for,<br />
- the trusted person of the person being cared for,<br />
- the caregiver of the person being cared for.<br />
<br />
The circle of care provides the identity of the member as well as a means of communication with them. Each member of the Circle of Care has a start date and an end date of participation in this circle.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge</td>
<td>Physical person benefiting from care, examinations, preventive acts, or services.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Professionnel</td>
<td>A Professional is a person who participates in the care of an individual.<br />
The professional can be from the healthcare, medico-administrative, medico-social, and social fields.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>Caregiver</td>
<td>The caregiver can be a family member or a close relative of the person.<br />
The caregiver accompanies the person being cared for in the gestures related to prescribed care to promote their autonomy.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Legal Representative</td>
<td>The legal representative acts on behalf of and for the account of the person they represent. They may be the parents of a minor child or a guardian for a minor child or an incapacitated adult.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>Trusted Person</td>
<td>The trusted person is a relative, a parent, who will be consulted in case the person being cared for is unable to express their will and to receive the necessary information for this purpose. The designation of the trusted person is not mandatory.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Role</td>
<td>Indicates the responsibility of the professional within the Circle of Care of an individual. It may be, for example, the role of general practitioner, coordinating doctor, nurse, pharmacist, etc.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="odd">
<td>Entity</td>
<td>The Entity corresponds to the notion of healthcare, medico-social, and social establishment or structure. It may be, for example, a Hospital Center, a Clinic, a Multiprofessional Health House (MSP), a Coordination Support Device (PTA...), a Home Nursing Care Service (SSIAD), etc.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
<tr class="even">
<td>Care Unit</td>
<td>The Care Unit is an organizational unit grouping healthcare activities within an Entity.</td>
<td><p>Flow 3 - ResultatRechercheCercleSoins</p>
<p>Flow 1 - CreationCercleSoins</p>
<p>Flow 4 - MiseJourCercleSoins</p>
<p>Flow 2 - RechercheCercleSoins</p></td>
</tr>
</tbody>
</table>

Table 12 Business Concepts

##### MOS Equivalence

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
<th>Business Concept</th>
<th>Extension</th>
<th>Restriction</th>
<th>Equivalence</th>
<th>MOS Concept</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins</td>
<td>X</td>
<td></td>
<td></td>
<td>No corresponding class</td>
</tr>
<tr class="even">
<td>MembreCercleSoins</td>
<td>X</td>
<td></td>
<td></td>
<td>No corresponding class</td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge</td>
<td></td>
<td></td>
<td>X</td>
<td><p>PersonnePriseCharge and</p>
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
<td>Caregiver</td>
<td></td>
<td>X</td>
<td></td>
<td>Contact</td>
</tr>
<tr class="even">
<td>Legal Representative</td>
<td></td>
<td>X</td>
<td></td>
<td>Contact</td>
</tr>
<tr class="odd">
<td>Trusted Person</td>
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
<td>Entity</td>
<td></td>
<td>X</td>
<td></td>
<td><p>EntiteGeographique and</p>
<p>EntiteJuridique</p></td>
</tr>
<tr class="even">
<td>Care Unit</td>
<td></td>
<td>X</td>
<td></td>
<td>OrganisationInterne</td>
</tr>
</tbody>
</table>

Table 13 MOS Equivalence

### Modeling of Information Flows

#### Flow 1 - CreationCercleSoins

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image10.png" alt="Flux1" title="Flux1">
</div>

Figure 8 Flow 1 - CreationCercleSoins

Complex data types are described in the common classes of the ANS Health Object Model.

##### Class "PersonnePriseCharge"

Physical person benefiting from care, examinations, preventive acts, or services. Depending on the context, the person being cared for can be a patient or a user.

<table>
<colgroup>
<col style="margin:auto; width: 29%" />
<col style="margin:auto; width: 70%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>INS : [1..1] INS</td>
<td><p>The INS references health data and consists of the following elements:</p>
<p>- An INS matricule: the registration number in the national directory of identification of physical persons (NIR) or the waiting identifier number (NIA) for persons awaiting the attribution of an NIR (Art. R. 1111-8-1.-I of the Public Health Code)</p>
<p>- Civil status identity traits: last name (birth name), first name (list of birth first names), date of birth, sex, and place of birth;</p>
<p>- Complementary traits from the National Identity Vigilance Reference (RNIV): first first name of the birth certificate, used first name, and used last name.</p></td>
</tr>
<tr class="even">
<td>idPersonnePriseCharge : [0..*] Identifier</td>
<td>Secondary identifier(s) of the person being cared for.</td>
</tr>
<tr class="odd">
<td>adresseCorrespondance : [1..1] Address</td>
<td>Correspondence address(es) of the person being cared for.</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td>Telecommunication address(es) of the person being cared for (phone number, email address, etc.).</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 14 Attributes of the class "PersonnePriseCharge"

##### Class "PersonnePhysique"

A physical person is an individual holding rights and obligations characterized by a civil identity.

<table>
<colgroup>
<col style="margin:auto; width: 24%" />
<col style="margin:auto; width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>civilite : [0..1] Code</td>
<td>Civil status of the physical person.<br />
<br />
Associated nomenclature:<br />
TRE_R81-Civilite</td>
</tr>
<tr class="even">
<td>nomFamille : [0..1] Text</td>
<td>Every person has a last name (formerly called patronymic name). This name appears on the birth certificate. It may be, for example, the name of the father.<br />
Ref.: Service-public.fr<br />
Synonyms: patronymic name, birth name.</td>
</tr>
<tr class="odd">
<td>prenom : [0..*] Text</td>
<td>First name(s) of the person declared at their birth.</td>
</tr>
<tr class="even">
<td>sexe : [0..1] Code</td>
<td>Sex of the physical person, including male, female, unknown.<br />
<br />
Associated nomenclature:<br />
TRE_R249-Sexe</td>
</tr>
<tr class="odd">
<td>langueParlee : [0..*] LangueParlee</td>
<td>Language spoken by the person, including French.</td>
</tr>
<tr class="even">
<td>situationFamiliale : [0..1] Code</td>
<td>Family situation of the person (single, divorced, etc.).</td>
</tr>
<tr class="odd">
<td>dateNaissance : [0..1] Date</td>
<td>Date of birth of the person.</td>
</tr>
<tr class="even">
<td>lieuNaissance : [0..1] Text</td>
<td>Place of birth of the person.<br />
For persons born in France, it corresponds to the official geographical code (COG) of the birth commune. For persons born abroad, it is the COG of the country of birth.</td>
</tr>
<tr class="odd">
<td>paysResidence : [0..1] Code</td>
<td>Country where the person permanently resides.<br />
<br />
Associated nomenclature:<br />
TRE_R20-Pays</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 15 Attributes of the class "PersonnePhysique"

##### Class "Professionnel"

A Professional is a person who participates in the care of a User, whether at the healthcare, medico-administrative, medico-social, or social level.

| Name | Description |
| ----- | ----- |
| dPP : [0..1] Identifier | National identifier of the physical person:<br /> ** For healthcare professionals: RPPS or ADELI number.<br /> ** For students: RPPS number since 2017.<br /> Note, the Student number (ordinal identifier) is no longer assigned to new students but may remain in some pharmacy student cards until 2022.<br /> ** For non-healthcare professional actors employed by a structure: the identifier is composed of the main identifier of the structure and the internal identifier assigned by the structure. |
| typeIdNat_PP : [0..1] Code | Type of national identifier of the physical person.<br /><br />Associated nomenclature: TRE_G08-TypeIdentifiantPersonne |
| metadonnee : [1..1] Metadonnee | Information related to the management of classes and data. |

Table 16 Attributes of the class "Professionnel"

##### Class "SituationExercice"

Characteristics of a professional's practice during a specific period and within a specific structure (except for substitutes).

| Name | Description |
| ----- | ----- |
| modeExercice : [0..1] Code |The mode of practice describes according to which modality an activity is practiced with regard to the organization of the professional's remuneration.<br /> Examples:<br /> ** Liberal;<br /> ** Employee;<br /> ** Volunteer<br /><br />Associated nomenclature:<br />TRE_R23-ModeExercice</td>|
| role : [0..1] Code |Role of the professional within the practice structure.<br /><br />Associated nomenclatures:<br />TRE_R21-Fonction<br />TRE_R96-AutreFonctionSanitaire<br />TRE_R85-RolePriseCharge<br />ASS_A20- RolePriseCharge-GenreActivite |
| boiteLettresMSS : [0..*] BoiteLettreMSS | Mailbox(es) of the secure health messaging service (MSS) attached to the practice situation. |
| metadonnee : [1..1] Metadonnee | Information related to the management of classes and data. |

Table 17 Attributes of the class "SituationExercice"

##### Class "ExerciceProfessionnel"

Information describing, among other things, the profession practiced, the practice identity of a professional, and the framework of their practice (civil, military, etc.).

There may be several professional practices for a person at a given time.

<table>
<colgroup>
<col style="margin:auto; width: 36%" />
<col style="margin:auto; width: 63%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>civiliteExercice : [0..1] Code</td>
<td>Practice civil status of the professional.<br />
<br />
Associated nomenclature:<br />
TRE_R11-CiviliteExercice</td>
</tr>
<tr class="even">
<td>nomExercice : [0..1] Text</td>
<td>Name under which the professional practices.</td>
</tr>
<tr class="odd">
<td>prenomExercice : [0..1] Text</td>
<td>First name under which the professional practices.</td>
</tr>
<tr class="even">
<td>profession : [0..1] Code</td>
<td>Profession practiced or future profession of the student.<br />
<br />
Associated nomenclatures:<br />
TRE_G15-ProfessionSante<br />
TRE_R95-UsagerTitre<br />
TRE_R94-ProfessionSocial<br />
TRE_R291-AutreProfession</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 18 Attributes of the class "ExerciceProfessionnel"

##### Class "CercleSoins"

The Circle of Care includes all individuals (Professional or Third Party Person) and Entities that participate in the care and coordination actions of the health journey of a User. The Circle of Care has a status, a start date, an end date, and an update date.

<table>
<colgroup>
<col style="margin:auto; width: 19%" />
<col style="margin:auto; width: 80%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>idCercleSoins : [1..1] Identifier</td>
<td>Identifier of the circle of care.</td>
</tr>
<tr class="even">
<td>dateCreation : [1..1] Date</td>
<td>Date of creation of the circle of care.</td>
</tr>
<tr class="odd">
<td>dateMAJ : [1..*] Date</td>
<td>Date of update of the circle of care.</td>
</tr>
<tr class="even">
<td>dateFin : [0..1] Date</td>
<td>Date of end of existence of the circle of care.</td>
</tr>
<tr class="odd">
<td>statut : [0..1] Code</td>
<td>Status of the circle of care.<br />
<br />
The list of possible values is not defined by these specifications. The possible codes as well as the meaning given are defined by the manager according to the project. They can be inspired by the FHIR value set "CareTeamStatus" (proposed | active | suspended | inactive | entered-in-error).</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 19 Attributes of the class "CercleSoins"

##### Class "OrganisationInterne"

The internal organization is an organizational unit grouping healthcare activities within an Entity.

| Name | Description |
| ----- | ----- |
| identifiantOI : \[0..1\] Identifier | Identifier of the internal organization, unique and persistent at the national level. |
| nom : \[0..1\] Text | Name of the internal organization. |
| boiteLettresMSS : \[0..\*\] BoiteLettreMSS | Mailbox(es) of the secure health messaging service (MSS) attached to the practice situation. |
| metadonnee : \[1..1\] Metadonnee | Information related to the management of classes and data. |

Table 20 Attributes of the class "OrganisationInterne"

##### Class "EntiteJuridique"

The Legal Entity (EJ) corresponds to the notion of legal person:

** For healthcare, social, medico-social establishments, and training institutions for the professions of these sectors registered in the FINESS, an EJ holds rights (authorizations, approvals, agreements, etc.) allowing it to exercise its activities in establishments; each EJ has a legal status of the legal person;

** For other types of structures, an EJ is a legal person registered in the SIRENE, identified by its SIREN number.

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 78%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>numFINESS : [0..1] Identifier</td>
<td>FINESS identifier of the legal entity assigned upon its creation.<br />
Legal persons identified by FINESS numbers are also endowed with SIREN numbers. The FINESS number, intrinsically bearing links with the healthcare or medico-social field, should be preferred, if it exists, for the identification of these legal persons as healthcare and medico-social actors (Reference for the identification of healthcare and medico-social actors - General Policy for the Security of Health Information Systems (PGSSI-S)).</td>
</tr>
<tr class="even">
<td>numSIREN : [0..1] Identifier</td>
<td>The SIREN number is the unique identification number assigned to each company or organization by INSEE.</td>
</tr>
<tr class="odd">
<td>idNat_struct : [0..1] Identifier</td>
<td>National identification of the Legal Entity initiated for the needs of the SI-CPS.</td>
</tr>
<tr class="even">
<td>identifiantEJ : [0..1] Identifier</td>
<td>Specific identifier of the legal entity of an individual practice or a group practice whose geographical entity is identified by the identifiantEG attribute.</td>
</tr>
<tr class="odd">
<td>raisonSociale : [0..1] Text</td>
<td>The corporate name is the name of the legal entity.<br />
It must necessarily appear in the statutes of the EJ.</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td>Mailbox(es) of the secure health messaging service (MSS) attached to the practice situation.</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 21 Attributes of the class "EntiteJuridique"

##### Class "EntiteGeographique"

The Geographical Entity (EG) corresponds to the notion of establishment:

** For establishments registered in the FINESS, this notion of establishment results from the crossing of three criteria:

- A geographical criterion: An establishment is any location whose activity or equipment implantation is geographically distinct from another implantation.
Thus, a Regional Hospital Center includes as many establishments as there are different geographical implantations. A main establishment and its secondary establishment located 1 km away constitute two distinct establishments in FINESS. The geographical implantation can be described either with the addresseEG attribute or through the Lieu class.

- A budgetary criterion: For the same geographical implantation, as many establishments of the public sector are distinguished as there are distinct budgets (general budget, annex budget).
Thus, a sheltered workshop and its accommodation center constitute two establishments even if they are implanted at the same address.

- An activity criterion: For the same geographical implantation and the same budget, as many establishments are distinguished as there are "establishment categories" describing the main authorized activity.
Thus, a hospital center and its EHPAD, financed by the same budget, constitute two establishments even if they are implanted at the same address.

** For companies registered in the SIRENE, the EG corresponds to an establishment of the legal person, it is identified by a SIRET number.

<table>
<colgroup>
<col style="margin:auto; width: 21%" />
<col style="margin:auto; width: 78%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>numFINESS : [0..1] Identifier</td>
<td>FINESS number of the geographical entity.<br />
The FINESS number, intrinsically bearing links with the healthcare or medico-social field, should be preferred, if it exists, for the identification of geographical entities as healthcare and medico-social actors compared to the SIRET number (Reference for the identification of healthcare and medico-social actors - General Policy for the Security of Health Information Systems (PGSSI-S)).</td>
</tr>
<tr class="even">
<td>numSIRET : [0..1] Identifier</td>
<td>The SIRET number is the unique identification number, assigned by INSEE, to each geographical entity.</td>
</tr>
<tr class="odd">
<td>identifiantEG : [0..1] Identifier</td>
<td>Specific identifier generated by the RPPS or ADELI when creating a practice structure for an individual practice and a group practice. It is commonly known as the RPPS-rank or ADELI-rank.</td>
</tr>
<tr class="even">
<td>idNat_struct : [0..1] Identifier</td>
<td>National identification of the Geographical Entity initiated for the needs of the SI-CPS.</td>
</tr>
<tr class="odd">
<td>denominationEG : [0..1] Text</td>
<td>Name under which the geographical entity exercises its activity.<br />
It is, for example, the commercial sign for pharmacies.<br />
In the case of an establishment registered in the FINESS, this attribute corresponds to the notion of "corporate name of an establishment" provided in the FINESS.</td>
</tr>
<tr class="even">
<td>boiteLettresMSS : [0..*] BoiteLettreMSS</td>
<td>Mailbox(es) of the secure health messaging service (MSS) attached to the practice situation.</td>
</tr>
<tr class="odd">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 22 Attributes of the class "EntiteGeographique"

##### Class "Contact"

A contact can be a family member or a close relative of the User. It may be, for example, a caregiver, the User's trusted person...

<table>
<colgroup>
<col style="margin:auto; width: 22%" />
<col style="margin:auto; width: 77%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>role : [1..1] Code</td>
<td>Indicates the responsibility of a Third Party Person within the Circle of Care of a User. It may be, for example, the role of caregiver, trusted person, legal representative.<br />
<br />
Use of codes:<br />
* GUARD = Legal representative<br />
* QUAL = Trusted person<br />
* CAREGIVER = Caregiver<br />
<br />
Nomenclature used:<br />
TRE_R260-HL7RoleClass</td>
</tr>
<tr class="even">
<td>description : [0..1] Text</td>
<td>A description of the contact.</td>
</tr>
<tr class="odd">
<td>relation : [0..1] Code</td>
<td>Link of the contact person to another person. Example in the case of a patient, this link indicates whether the contact is their child, their brother, etc.</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 23 Attributes of the class "Contact"

##### Class "MembreCercleSoin"

This is a person (Professional or Third Party Person) or an Entity that is part of the Circle of Care of a User. Each member of the Circle of Care has a start date and an end date of participation in this circle.

<table>
<colgroup>
<col style="margin:auto; width: 38%" />
<col style="margin:auto; width: 61%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>idMembreCercleSoin : [1..1] Identifier</td>
<td>Identifier of the member of the circle of care.</td>
</tr>
<tr class="even">
<td>dateEntreeCercleSoin : [1..*] Date</td>
<td>Start date of participation in the circle of care of the person being cared for.</td>
</tr>
<tr class="odd">
<td>dateSortieCercleSoin : [0..*] Date</td>
<td>End date of participation in the circle of care of the person being cared for.</td>
</tr>
<tr class="even">
<td>telecommunication : [1..*] Telecommunication</td>
<td>Telecommunication address(es) (phone number, email address, URL, etc.):<br />
- attached to the practice situation.<br />
- of the contact</td>
</tr>
<tr class="odd">
<td>adresse : [0..*] Address</td>
<td>Geopostal address(es):<br />
- attached to the practice situation.<br />
- of the contact point.</td>
</tr>
<tr class="even">
<td>metadonnee : [1..1] Metadonnee</td>
<td>Information related to the management of classes and data.</td>
</tr>
</tbody>
</table>

Table 24 Attributes of the class "MembreCercleSoin"

##### Management Rule

When the PersonnePhysique represents a Professional, do not consider the attributes situationFamiliale, lieuNaissance, and paysResidence.

#### Flow 3 - ResultatRechercheCercleSoins

The model of the flow is identical to flow 1.

#### Flow 4 - MiseJourCercleSoins

The model of the flow is identical to flow 1.

#### Search Flow: Flow 2 - RechercheCercleSoins

<table>
<colgroup>
<col style="margin:auto; width: 43%" />
<col style="margin:auto; width: 42%" />
<col style="margin:auto; width: 14%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Mandatory</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CercleSoins/idCercleSoins</td>
<td>Identifier of the circle of care.</td>
<td>No</td>
</tr>
<tr class="even">
<td>CercleSoins/dateCreation</td>
<td>Date of creation of the circle of care.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>CercleSoins/dateFin</td>
<td>Date of end of existence of the circle of care.</td>
<td>No</td>
</tr>
<tr class="even">
<td>CercleSoins/dateMAJ</td>
<td>Date of update of the circle of care.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>CercleSoins/statut</td>
<td>Status of the circle of care.<br />
<br />
The list of possible values is not defined by these specifications. The possible codes as well as the meaning given are defined by the manager according to the project. They can be inspired by the FHIR value set "CareTeamStatus" (proposed | active | suspended | inactive | entered-in-error).</td>
<td>No</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/idMembreCercleSoin</td>
<td>Identifier of the member of the circle of care.</td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>MembreCercleSoin/</p>
<p>dateEntreeCercleSoin</p></td>
<td>Start date of participation in the circle of care of the person being cared for.</td>
<td>No</td>
</tr>
<tr class="even">
<td>MembreCercleSoin/dateSortieCercleSoin</td>
<td>End date of participation in the circle of care of the person being cared for.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>PersonnePriseCharge/INS</td>
<td>The INS references health data and consists of the following elements:<br />
- An INS matricule: the registration number in the national directory of identification of physical persons (NIR) or the waiting identifier number (NIA) for persons awaiting the attribution of an NIR (Art. R. 1111-8-1.-I of the Public Health Code)<br />
- Civil status identity traits: last name (birth name), first name (list of birth first names), date of birth, sex, and place of birth;<br />
- Complementary traits from the National Identity Vigilance Reference (RNIV): first first name of the birth certificate, used first name, and used last name.</td>
<td>No</td>
</tr>
<tr class="even">
<td><p>PersonnePriseCharge/</p>
<p>idPersonnePriseCharge</p></td>
<td>Secondary identifier(s) of the person being cared for.</td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>PersonnePriseCharge/</p>
<p>adresseCorrespondance</p></td>
<td>Correspondence address(es) of the person being cared for.</td>
<td>No</td>
</tr>
<tr class="even">
<td>PersonnePhysique/nomFamille</td>
<td>Every person has a last name (formerly called patronymic name). This name appears on the birth certificate. It may be, for example, the name of the father.<br />
Ref.: Service-public.fr<br />
Synonyms: patronymic name, birth name.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>PersonnePhysique/prenom</td>
<td>First name(s) of the person declared at their birth.</td>
<td>No</td>
</tr>
<tr class="even">
<td>PersonnePhysique/dateNaissance</td>
<td>Date of birth of the person.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>SituationExercice/role</td>
<td>Role of the professional within the practice structure.<br />
<br />
Associated nomenclatures:<br />
TRE_R21-Fonction<br />
TRE_R96-AutreFonctionSanitaire<br />
TRE_R85-RolePriseCharge<br />
ASS_A20- RolePriseCharge-GenreActivite</td>
<td>No</td>
</tr>
<tr class="even">
<td>ExerciceProfessionnel/nomExercice</td>
<td>Name under which the professional practices.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>ExerciceProfessionnel/profession</td>
<td>Profession practiced or future profession of the student.<br />
<br />
Associated nomenclatures:<br />
TRE_G15-ProfessionSante<br />
TRE_R95-UsagerTitre<br />
TRE_R94-ProfessionSocial<br />
TRE_R291-AutreProfession</td>
<td>No</td>
</tr>
<tr class="even">
<td>Professionnel/idPP</td>
<td>National identifier of the physical person:<br />
** For healthcare professionals: RPPS or ADELI number.<br />
** For students: RPPS number since 2017.<br />
Note, the Student number (ordinal identifier) is no longer assigned to new students but may remain in some pharmacy student cards until 2022.<br />
** For non-healthcare professional actors employed by a structure: the identifier is composed of the main identifier of the structure and the internal identifier assigned by the structure.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/denominationEG</td>
<td>Name under which the geographical entity exercises its activity.<br />
It is, for example, the commercial sign for pharmacies.<br />
In the case of an establishment registered in the FINESS, this attribute corresponds to the notion of "corporate name of an establishment" provided in the FINESS.</td>
<td>No</td>
</tr>
<tr class="even">
<td>EntiteGeographique/numFINESS</td>
<td>FINESS number of the geographical entity.<br />
The FINESS number, intrinsically bearing links with the healthcare or medico-social field, should be preferred, if it exists, for the identification of geographical entities as healthcare and medico-social actors compared to the SIRET number (Reference for the identification of healthcare and medico-social actors - General Policy for the Security of Health Information Systems (PGSSI-S)).</td>
<td>No</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/numSIRET</td>
<td>The SIRET number is the unique identification number, assigned by INSEE, to each geographical entity.</td>
<td>No</td>
</tr>
<tr class="even">
<td>EntiteGeographique/identifiantEG</td>
<td>Specific identifier generated by the RPPS or ADELI when creating a practice structure for an individual practice and a group practice. It is commonly known as the RPPS-rank or ADELI-rank.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>EntiteGeographique/idNat_struct</td>
<td>National identification of the Geographical Entity initiated for the needs of the SI-CPS.</td>
<td>No</td>
</tr>
<tr class="even">
<td>EntiteJuridique/raisonSociale</td>
<td>The corporate name is the name of the legal entity.<br />
It must necessarily appear in the statutes of the EJ.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/numFINESS</td>
<td>FINESS identifier of the legal entity assigned upon its creation.<br />
Legal persons identified by FINESS numbers are also endowed with SIREN numbers. The FINESS number, intrinsically bearing links with the healthcare or medico-social field, should be preferred, if it exists, for the identification of these legal persons as healthcare and medico-social actors (Reference for the identification of healthcare and medico-social actors - General Policy for the Security of Health Information Systems (PGSSI-S)).</td>
<td>No</td>
</tr>
<tr class="even">
<td>EntiteJuridique/numSIREN</td>
<td>The SIREN number is the unique identification number assigned to each company or organization by INSEE.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>EntiteJuridique/idNat_struct</td>
<td>National identification of the Legal Entity initiated for the needs of the SI-CPS.</td>
<td>No</td>
</tr>
<tr class="even">
<td>EntiteJuridique/identifiantEJ</td>
<td>Specific identifier of the legal entity of an individual practice or a group practice whose geographical entity is identified by the identifiantEG attribute.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>OrganisationInterne/identifiantOI</td>
<td>Identifier of the internal organization, unique and persistent at the national level.</td>
<td>No</td>
</tr>
<tr class="even">
<td>OrganisationInterne/nom</td>
<td>Name of the internal organization.</td>
<td>No</td>
</tr>
<tr class="odd">
<td>Contact/nom</td>
<td>A name of the person to contact.</td>
<td>No</td>
</tr>
<tr class="even">
<td>Contact/role</td>
<td>Indicates the responsibility of a Third Party Person within the Circle of Care of a User. It may be, for example, the role of caregiver, trusted person, legal representative.<br />
<br />
Use of codes:<br />
* GUARD = Legal representative<br />
* QUAL = Trusted person<br />
* CAREGIVER = Caregiver<br />
<br />
Nomenclature used:<br />
TRE_R260-HL7RoleClass</td>
<td>No</td>
</tr>
</tbody>
</table>

Table 26 Search Flow

### Illustrations

#### Sequence Diagram Interaction

Illustration of the use case presented in step 0.

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image11.png" alt="Flux1" title="Flux1">
</div>

#### Sequence Diagram Interaction

Another illustration of the use case with DAC IS as creator & manager, Electronic Patient Record, and General Practitioner IS as consumer

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image12.png" alt="Flux1" title="Flux1">
</div>

#### Object Diagram of Flow 1.

<div class="figure" style="margin:auto; width:100%;">
    <img style="height: auto; width: 100%;" src="sf_image13.png" alt="Flux1" title="Flux1">
</div>