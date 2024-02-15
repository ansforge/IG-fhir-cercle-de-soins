<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile FrPatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-nationality']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-nationality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientIdentReliability']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientIdentReliability': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientDeathPlace']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientDeathPlace': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientIdentityMethodCollection']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientIdentityMethodCollection': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientBirthdateUpdateIndicator']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientBirthdateUpdateIndicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &gt;= 1">telecom: minimum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:address) &gt;= 1">address: minimum cardinality of 'address' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:extension</sch:title>
    <sch:rule context="f:Patient/f:extension">
      <sch:assert test="count(f:extension[@url = 'identityReliability']) &lt;= 1">extension with URL = 'identityReliability': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'validationDate']) &lt;= 1">extension with URL = 'validationDate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'validationMode']) &lt;= 1">extension with URL = 'validationMode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:extension/f:value[x] 1</sch:title>
    <sch:rule context="f:Patient/f:extension/f:value[x]">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/humanname-assembly-order']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/humanname-assembly-order': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/humanname-assembly-order']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/humanname-assembly-order': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:family) &gt;= 1">family: minimum cardinality of 'family' is 1</sch:assert>
      <sch:assert test="count(f:given) &gt;= 1">given: minimum cardinality of 'given' is 1</sch:assert>
      <sch:assert test="count(f:given) &lt;= 1">given: maximum cardinality of 'given' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact</sch:title>
    <sch:rule context="f:Patient/f:contact">
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientContactIdentifier']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientContactIdentifier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrPatientContactComment']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrPatientContactComment': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
