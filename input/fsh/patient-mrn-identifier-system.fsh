Instance: PatientMrnNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Patient MRN Identifier Namespace"
Description: "Namespace definition for patient MRN identifier system used in this IG."
* name = "PatientMrnNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-03-07"
* publisher = "FHIR Course"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://ushosp.org/fhir/pat-identifier/mrn"
* uniqueId[0].preferred = true