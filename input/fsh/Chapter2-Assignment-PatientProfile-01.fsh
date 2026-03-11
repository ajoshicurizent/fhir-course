// This is a FSH file creating FHIR course Patient profile for Chapter 2- Resource Concepts- 
//Creating Patient resource instance assignment..
// The intent is to create the profile which can be used to validate the requirements for writing Patient resource instance for the assignment.
// SUSHI will look for definitions in any file using the .fsh ending.
//currently this profile not validating human race extension. If I define this extension, I need to share the definition 
// of this extension, then it will be same like houseNumberNumeric or PatientNationalityExtension extensions.
// I want participants to think and create their own extension url and decide on data type. 
// I have to manually validate race extension in the participants submission. 
Alias: $houseNumberNumeric = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumberNumeric|4.0.1
Profile: ResourceConceptAssignmentPatientProfile01
Parent: Patient
Id: fhir-course-patient01
Title: "FHIR course Patient Profile 01"
Description: "The patient profile to validate resource instance participants need to create for session 2: Patient resource Assignment."
* insert CommonMetadataRuleSet
* ^purpose = "Validate Patient resource instance required for the assignment against this profile."
* extension contains PatientNationalityExtension named patientNationality 1..1
* active 1..1
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.system = "http://ushosp.org/fhir/pat-identifier/mrn"
* name 1..*
* name.given 1..*
* name.family 1..1
* gender 1..1
* birthDate 1..1
* telecom 1..* 
* telecom.system 1..1
* telecom.value 1..1
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "telecom can have email, phone number etc. At least one of the telecom repetitions shall have phone number."
* telecom ^slicing.ordered = false
* telecom contains 
     phoneNumber 1..1
* telecom[phoneNumber] ^short = "Patient phone number- landline or mobile."
* telecom[phoneNumber].system = #phone
* telecom[phoneNumber].value 1..1
* telecom[phoneNumber].use = #mobile
* address 1..1
* address.use 1..1
* address.use = #home
* address.line 1..1
* address.city 1..1
* address.postalCode 1..1
* address.country 1..1
* address.line.extension contains $houseNumberNumeric named houseNumberNumeric 1..*
//Patient.contact - name and relationship. 
//relationship with an example of 
* contact 1..1
* contact.name 1..1
* contact.name.family 1..1
* contact.name.given 1..1
* contact.relationship 1..1
* contact.relationship.coding 2..2
* contact.relationship.coding ^slicing.discriminator.type = #value
* contact.relationship.coding ^slicing.discriminator.path = "code"
* contact.relationship.coding ^slicing.rules = #closed

* contact.relationship.coding contains
    nextOfKin 1..1 and
    customMth 1..1

* contact.relationship.coding[nextOfKin].system 1..1
* contact.relationship.coding[nextOfKin].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding[nextOfKin].code 1..1
* contact.relationship.coding[nextOfKin].code = #N

* contact.relationship.coding[customMth].system 1..1
* contact.relationship.coding[customMth].code 1..1
* contact.relationship.coding[customMth].code = #MTH

//Two general practioners 
* generalPractitioner 2..2
* generalPractitioner only Reference(Practitioner)

* generalPractitioner ^slicing.discriminator[0].type = #value
* generalPractitioner ^slicing.discriminator[0].path = "reference"
* generalPractitioner ^slicing.discriminator[1].type = #exists
* generalPractitioner ^slicing.discriminator[1].path = "identifier"
* generalPractitioner ^slicing.rules = #closed

* generalPractitioner contains
    practitionerByResourceId 1..1 and
    practitionerByIdentifier 1..1

* generalPractitioner[practitionerByResourceId] only Reference(Practitioner)
* generalPractitioner[practitionerByResourceId].reference 1..1
* generalPractitioner[practitionerByResourceId].reference = "Practitioner/456789"
* generalPractitioner[practitionerByResourceId].identifier 0..0

* generalPractitioner[practitionerByIdentifier] only Reference(Practitioner)
* generalPractitioner[practitionerByIdentifier].reference 0..0
* generalPractitioner[practitionerByIdentifier].identifier 1..1
* generalPractitioner[practitionerByIdentifier].identifier.system 1..1
* generalPractitioner[practitionerByIdentifier].identifier.system = "http://ushosp.org/fhir/practitioner-npi"
* generalPractitioner[practitionerByIdentifier].identifier.value 1..1 
* generalPractitioner[practitionerByIdentifier].identifier.value = "9087612"

