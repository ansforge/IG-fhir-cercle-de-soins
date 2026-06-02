### Flow 2a: Care Team Search

```
More information on FHIR search in the official documentation
https://www.hl7.org/fhir/R4/search.html
```

This flow is based on the query of the IHE transaction "Search for Care Team" [PCC-46] of the DCTM profile based on the FHIR "search" interaction.

The GET request is accompanied by search parameters defined in the [CapabilityStatement of the Manager](CapabilityStatement-CDSGestionnaire.html).
These search criteria have been defined in the [Functional Specifications](specifications_fonctionnelles.html).

Chained search parameters must be defined to meet these requirements, some examples can be found in the table below:

| Search Criteria | Search Parameter |
| :---- | :---- |
| Care team member identifier (contact) | participant:RelatedPerson._id : token |
| Care team member identifier (professional in a practice situation) | participant:PractitionerRole._id : token |
| Care team member identifier (geographic entity) | participant:Organization._id : token |
| Identifier of the geographic entity, legal entity | participant:Organization.identifier : token |
| Professional identifier | participant:PractitionerRole.practitioner:Practitioner.identifier |
| Name of the care team member (contact) | participant:RelatedPerson.name: string |
| Name of the care team member (professional in a professional practice or in a practice situation) | participant:PractitionerRole.practitioner.name : string (custom parameter) |
| Name of the care team member (geographic entity) | participant:Organization.name : string |
| Legal Entity Corporate Name | participant:Organization.partof.name : string |
| Role of the care team member (contact) | participant:RelatedPerson.relationship: token |
| Role of the care team member (professional practice) | participant:PractitionerRole.role : token |

The "_include" and "_revinclude" parameters can be used to retrieve referenced resources. The "_elements" parameter can be used to limit the attributes returned by the server.

#### Query Examples

* Search for CareTeam resources where the subject has the identifier 123456. The search result should also include all resources referenced by the returned "CareTeam" resources as well as the resources referenced by these resources.

GET http://targetsystem.com/API/Careteam?_include:iterate=*&patient.identifier=http://exAutoriteAffectation/patient\|123456

* Search for CareTeam resources with a RelatedPerson type member named Ducros and living in Tourcoing. The search result should also include all resources referenced by the "subject" element of the returned "CareTeam" resources, i.e., the resources corresponding to patients having this third party in their care team.

GET http://targetsystem.com/API/Careteam?_include:iterate=CareTeam:subject&participant:RelatedPerson.name:exact=Ducros&participant:RelatedPerson.address=Tourcoing

### Flow 3a: Response to Care Team Search

Flow 3a constitutes the response to the GET request of flow 2a. When the search is successful, the management system returns an HTTP 200 OK code. The body of the response to the request is a "Bundle" resource of type "searchset" encapsulating 0, 1 to multiple "CareTeam" resources meeting the search criteria. Resources referenced by the returned CareTeam resources are also in the Bundle if it was requested to include them in the GET request.
Flows 2a and 3a correspond to the IHE transaction "Search for CareTeam" [PCC-46].

### Flow 2b: Retrieval of a Care Team

This flow is based on the query of the IHE transaction "Retrieve Care Team" [PCC-47] of the DCTM profile. Retrieving a CareTeam resource corresponding to a specified identifier is based on the FHIR "read" interaction. Flow 2b is therefore an HTTP GET request accompanied by the "id" parameter.

Retrieving a CareTeam resource corresponding to a logical identifier must be possible by relying on the FHIR "vread" interaction, which takes into account the version of the resource, and on the "history" interaction, which allows requesting the retrieval of a specific version of the resource (history-instance and history-type should be offered).

* Query example - search for the second version of the CareTeam resource 123

GET http://targetsystem.com/API/Careteam/123/_history/2

### Flow 3b: Response to Care Team Retrieval

Flow 3b constitutes the response to the GET request of flow 3a. When the request is successful, the management system returns an HTTP 200 OK code. The body of the response to the request is a "CareTeam" resource with the requested identifier and, if applicable, corresponding to the version specified in the request.
Flows 2b and 3b for retrieving a care team correspond to the IHE transaction "Retrieve CareTeam" [PCC-47].