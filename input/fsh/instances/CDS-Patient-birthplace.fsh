Instance: cds-patient-birthplace
InstanceOf: SearchParameter
Usage: #definition
* name = "CDSPatientBirthplace"
* status = #active
* description = "Lieu de naissance du patient"
* code = #birthplace
* base = #Patient
* type = #string
* expression = "extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').value as Address"
* multipleOr = false
* multipleAnd = false