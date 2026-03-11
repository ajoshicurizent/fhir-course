// This is a FSH file creating Lean Core patient resource instance example generated through FDH
// SUSHI will look for definitions in any file using the .fsh ending.
Alias: $v20131 = http://terminology.hl7.org/CodeSystem/v2-0131


Instance: patient-example-001
InstanceOf: ResourceConceptAssignmentPatientProfile01
Usage: #example
Title: "John Cena"
Description: "sample Patient resource instance to test the FHIR Course Chapter 2: Writing Patient resource instance against the  Patient profile."
//we can provide extension profile id or name or url and same is true for CodeSystem, below example mentions extension id and CodeSystem name
* extension[PatientNationalityExtension].extension[code].valueCodeableConcept = ISO3166Part1Alpha3#SAU "Saudi Arabia"

* active = true
* gender = #male 
* birthDate = "1990-05-15"
* identifier.system = "http://ushosp.org/fhir/pat-identifier/mrn"
* identifier.value = "1234567891"

* insert Name(Robert, Smith)
//name showing that given repetitions can handle Middle name (Kumar) and it is official name.
* name[+].family = "Joshi"
* name[=].given[+] = "Aditya"
* name[=].given[+] = "Kumar"
* name[=].prefix[+] = "Mr."
* name[=].use = #official

//telecom slices 
* telecom[phoneNumber].system = #phone
* telecom[phoneNumber].value = "(+91) 9023123456"
* telecom[phoneNumber].use = #mobile

//address element
* address[+].use = #home
* address[=].line[+] = "Lane no. 15"
* address[=].line[=].extension[houseNumberNumeric].valueString = "15"
* address[=].city = "Bangalore"
* address[=].district = "Bangalore Urban district"
* address[=].state = "Karnataka"
* address[=].postalCode = "560034"
* address[=].country = "IND"

* contact[0].name.family = "Cena"
* contact[0].name.given[0] = "Jasmine"
* contact[0].relationship[0].coding[nextOfKin].system = $v20131
* contact[0].relationship[0].coding[nextOfKin].code = #N
* contact[0].relationship[0].coding[nextOfKin].display = "Next-of-Kin"

* contact[0].relationship[0].coding[customMth].system = "http://ushosp.org/fhir/CodeSystem/patient-contact-relationship"
* contact[0].relationship[0].coding[customMth].code = #MTH
* contact[0].relationship[0].coding[customMth].display = "Mother"

* generalPractitioner[practitionerByResourceId].reference = "Practitioner/456789"
* generalPractitioner[practitionerByIdentifier].identifier.system = "http://ushosp.org/fhir/practitioner-npi"
* generalPractitioner[practitionerByIdentifier].identifier.value = "9087612"