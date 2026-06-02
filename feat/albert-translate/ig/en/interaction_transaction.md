# Interactions transaction - Cercle De Soins v2.0.1

## Interactions transaction

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Creation of a care team

The first step in building this care team creation flow is to organize its content. Several types of resources are present:

* The CareTeam resource (profile [CDS_IHECareTeam](StructureDefinition-cds-ihe-careteam.md)),
* The resource referenced as the subject of the Care Team: the Patient resource complying with the FrCorePatientProfile profile, preferably containing an identifier, a telecom, and an address,
* The resource(s) referenced as members of the Care Team, and those they reference, among the following resources: 
* PractitionerRole (profile ASPractitionerRole) to represent a particular practice situation of a professional. 
* With Practitioner (profile ASPractitioner) referenced from PractitionerRole.practitioner (Professional Practice).
 
* RelatedPerson (profile [CDS_FrRelatedperson](StructureDefinition-cds-fr-related-person.md)) to represent a third party,
* Organization (profile CDSAsOrganization) to represent a geographical entity (EG), a legal entity (EJ), or an internal organization (OI)
* Or none if the only member is the person already referenced as the subject of the Care Team.
 

These resources are encapsulated in a "Bundle" resource of type "transaction" compliant with the profile [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md). The Bundle contains at least one CareTeam resource. This Bundle constitutes the body of the HTTP POST request.


For each entry element of the Bundle resource, the request.method parameter will be set to POST for new resources to be posted to the server:

* For the CareTeam resource, the request.method attribute will be set to POST,
* For the resources referenced in CareTeam as the subject and members of the care team, they will be included in the Bundle if they do not exist on the server; the request.method attribute will be set to POST.

The management of creation and modification rights of the actors is the responsibility of the manager.

If the transaction has been correctly performed and therefore the creation of the care team is correctly performed, an HTTP 200 OK code is returned. A transaction-response type Bundle must be returned in the body of the response. The latter must contain the resources as they were created by the manager or, at a minimum, the logical identifiers of the resources that were assigned by the manager (in Bundle.entry.fullUrl and/or Bundle.entry.resource.id). Otherwise, an HTTP 500 Internal Server Error code is returned with an OperationOutcome resource containing the details of the errors and warnings resulting from the processing of the Bundle entries.

### Updating care teams

The Bundle [CDS_BundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md) can contain exactly the same resources as the [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md). The Bundle contains at least one CareTeam resource; regarding the actors, only the resource(s) that need to be created or updated are included in the bundle. This Bundle constitutes the body of the HTTP POST request.


For each entry element of the Bundle resource, the request.method parameter will be set to PUT for each resource to be updated or to POST for each new resource to be created on the server:

* For the CareTeam resource, the request.method attribute will be set to PUT,
* For the resources referenced in CareTeam as the subject and members of the care team, they will be included in the Bundle if they do not exist on the server; the request.method attribute will then be set to POST if it is a new actor or to PUT to update a member.

The management of creation and modification rights of the actors is the responsibility of the manager.

