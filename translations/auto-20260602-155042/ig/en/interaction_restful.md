# RESTful Interactions - Cercle De Soins v2.0.1

## RESTful Interactions

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Actor Management

```
More information on FHIR HTTP requests in the official documentation
https://www.hl7.org/fhir/R4/http.html

```

The flows for managing resources representing care circle actors are creation and update flows for actors respectively operated by HTTP POST and HTTP PUT requests on the FHIR resources « Patient », « Practitioner », « PractitionerRole », « RelatedPerson » and « Organization »:

* It is strongly recommended to rely on the Health Directory data, which brings together identification data for healthcare professionals and facilities from various national reference databases.
* the Patient resource respecting the FrCorePatientProfile profile should preferably contain an identifier, a telecom and an address

The defined RESTful interaction flows are:

* Flow 1a for creating an actor is an HTTP POST request based on the FHIR « create » interaction.
* Flow 4a for updating is an HTTP PUT request based on the FHIR « update » interaction. Updating requires specifying the logical identifier of the resource to be updated.

These requests are sent to the manager:

If the actor creation is correctly performed, an HTTP 201 created code is returned. If the actor update is correctly performed, the management system returns an HTTP 200 OK code.

### Care Circle Management

The flows for managing care circles are defined below:

* Flow 1b for creating the care circle will be handled by one or more HTTP POST requests.
* Flow 2a for searching care circles will be handled by an HTTP GET request.
* Flow 2b is a flow for requesting the retrieval of a particular care circle; it will be handled by an HTTP GET request.
* Flow 3a for responding to the search for care circles will be handled by the response to the HTTP GET request (flow 2a).
* Flow 3b is a flow for responding to the request for retrieval of a particular Care Circle; it will be handled by the response to the HTTP GET request (flow 2b).
* Flow 4b for updating the care circle will be handled by one or more HTTP PUT requests.

As indicated in the [Functional Specification](specifications_fonctionnelles.md) tab of this guide, the prerequisite for creating a care circle is searching for this care circle. If the care circle does not exist, it is created (flow 1b), otherwise, it is updated (flow 4b):

#### Flow 1b: Creating a Care Circle

The flow for creating the « CareTeam » resource is an HTTP POST request based on the FHIR « create » interaction. The « CareTeam » resource constitutes the body of the request. This flow is based on the IHE transaction request « Update Care Team » [PCC-45] of the DCTM profile. If the care circle creation is correctly performed, an HTTP 201 created code is returned.

### Flow 4b: Updating a Care Circle

The flow for updating the « CareTeam » resource is an HTTP PUT request. The « CareTeam » resource constitutes the body of the request. Updating the CareTeam resource requires specifying the logical identifier of the resource to be updated. This flow is based on the IHE transaction request « Update Care Team » [PCC-45] of the DCTM profile. The care circle update should be able to be performed based on the FHIR « update » interaction. If the care circle update is correctly performed, the management system returns an HTTP 200 ok code. For information on other HTTP codes (HTTP status codes), consult the documentation related to the update interaction, « update » of the FHIR REST API. When updating the care circle, the manager increments the resource version number (Careteam.meta.versionID) and indicates the update date at the level of Careteam.meta.LastUpdated.

