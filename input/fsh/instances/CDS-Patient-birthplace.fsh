Instance: CDS-Patient-birthplace
InstanceOf: SearchParameter
Usage: #definition
* meta.lastUpdated = "2021-10-21T09:10:25.769+00:00"
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/CDS_Patient_birthplace"
* version = "1.0"
* name = "CDS_Patient_birthplace"
* status = #active
* date = "2021-10-21T09:10:25.3807231+00:00"
* publisher = "ANS"
* description = "Lieu de naissance du patient"
* code = #birthplace
* base = #Patient
* type = #string
* expression = "extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address"
* multipleOr = false
* multipleAnd = false