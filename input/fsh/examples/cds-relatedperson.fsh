Alias: $TRE-R260-HL7RoleClass = https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass
Alias: $TRE-R216-HL7RoleCode = https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode

Instance: cds-relatedperson-example
InstanceOf: CDSFrRelatedPerson
Usage: #example
* identifier.use = #temp
* identifier.system = "https://fake-system"
* identifier.value = "id-relatedPerson-12"
* active = true
* patient = Reference(urn:uuid:0cd07e94-5dfe-11ee-8c99-0242ac120002)
* relationship[0] = $TRE-R260-HL7RoleClass#ECON "Entité à contacter en cas d'urgence"
* relationship[+] = $TRE-R216-HL7RoleCode#NBOR "Voisin(e)"
* name.use = #official
* name.family = "Lamine"
* name.given = "CHIBOUT"
* telecom.system = #phone
* telecom.value = "0602143212"
* gender = #male
* address.line = "12 Rue de la Paix"
* address.city = "Paris"
* address.postalCode = "75004"
* address.country = "FRA"