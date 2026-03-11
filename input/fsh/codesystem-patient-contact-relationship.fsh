CodeSystem: PatientContactRelationship
Id: patient-contact-relationship
Title: "Patient Contact Relationship Codes"
Description: "Local codes used to describe patient contact relationships for course examples."
//by writing url here, sushi will take this url instead of cannonical url defined in the sushi config file +
// the value if Id element. by deafult it is cannonical url + Id element value as url. 
//in sushi config, the below url defined as special url so the default url creation will be ignored.
* ^url = "http://ushosp.org/fhir/CodeSystem/patient-contact-relationship"
* insert CommonMetadataRuleSet
* ^caseSensitive = true
* ^content = #complete
* #MTH "Mother"
