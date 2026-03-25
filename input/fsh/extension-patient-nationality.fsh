// This is a FSH file creating FHIR course patient-nationality extension 
// SUSHI will look for definitions in any file using the .fsh ending.
Extension: PatientNationalityExtension
Id: patient-nationality-extension
Title: "FHIR Course Extension Patient Nationality"
Description: "The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes."
Context: Patient
* insert CommonMetadataRuleSet
* extension contains 
           code 1..1 and 
           period 1..1 
* extension[code] ^short = "country code to represent the Nationality"
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from PatientNationalityValueSet (required)
* extension[period] ^short = "time period when the Nationality is active. If no valuePeriod.end then the Nationality shall be considered currently active"
* extension[period].value[x] only Period
* extension[period].valuePeriod.start 1..1
* extension[period].valuePeriod.end 0..0