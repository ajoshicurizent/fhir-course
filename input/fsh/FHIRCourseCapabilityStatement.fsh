// CapabilityStatement instance in FSH
Instance: FHIRCourseCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
Title: "FHIR Course CapabilityStatement"
Description: "FHIR server shall behave in accordance of this capability statement."
* name = "FHIRCourseCapabilityStatement"
* title = "FHIR Course CapabilityStatement"
* status = #draft
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* date = "2025-11-23T12:34:56Z"
* rest.mode = #server
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(http://courses.ajoshi.org/fhir/StructureDefinition/fhir-course-patient01, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportSearchParameter(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier , #token, #SHALL)