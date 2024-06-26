Alias: $fr-v2-0203 = http://interopsante.org/CodeSystem/fr-v2-0203
Alias: $fr-v2-0445 = http://interopsante.org/fhir/CodeSystem/fr-v2-0445

Instance: cds-patient-example
InstanceOf: FRCorePatientINSProfile
Usage: #example
* meta.lastUpdated = "2023-09-27T13:48:19.342+01:00"

* identifier[INS-NIR].use = #official
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].value = "123456789012244"

* name[officialName].family = "Thobois"
* name[officialName].given = "Jacques"
* name[officialName].use = #official
* name[officialName].extension[birth-list-given-name].valueString = "Jacques"
* gender = #male

* birthDate = "1984-10-02"

// identityReliability
* extension[identityReliability].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445#VALI

// birthPlace
* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune#29064
* extension[birthPlace].valueAddress.city = "GOULVEN"
