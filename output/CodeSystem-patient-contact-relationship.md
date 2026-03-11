# Patient Contact Relationship Codes - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Contact Relationship Codes**

## CodeSystem: Patient Contact Relationship Codes 

| | |
| :--- | :--- |
| *Official URL*:http://ushosp.org/fhir/CodeSystem/patient-contact-relationship | *Version*:0.1.0 |
| Active as of 2026-03-10 | *Computable Name*:PatientContactRelationship |
| **Copyright/Legal**: Used by permission of FHIR course Author. | |

 
Local codes used to describe patient contact relationships for course examples. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-contact-relationship",
  "url" : "http://ushosp.org/fhir/CodeSystem/patient-contact-relationship",
  "version" : "0.1.0",
  "name" : "PatientContactRelationship",
  "title" : "Patient Contact Relationship Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-10T18:59:27+03:00",
  "publisher" : "Aditya Joshi (FHIR Trainer)",
  "contact" : [
    {
      "name" : "Aditya Joshi (FHIR Trainer)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/cgp"
        }
      ]
    }
  ],
  "description" : "Local codes used to describe patient contact relationships for course examples.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "copyright" : "Used by permission of FHIR course Author.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "MTH",
      "display" : "Mother"
    }
  ]
}

```
