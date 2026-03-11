// This is a FSH file creating FHIR course patient-nationality extension ValueSet to manage the codes 
// defined by ISO 3166-1 code sytem
// SUSHI will look for definitions in any file using the .fsh ending.
ValueSet: PatientNationalityValueSet
Id: patient-nationality-valueset
Title: "Nationality (ISO 3166-1 Alpha-3 Subset)"
Description: "ValueSet for the Countries represented using ISO 3166-1 alpha-3 codes."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* insert CommonMetadataRuleSet
* include codes from system ISO3166Part1Alpha3