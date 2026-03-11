# FHIR Course CapabilityStatement - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR Course CapabilityStatement**

## CapabilityStatement: FHIR Course CapabilityStatement 

| | |
| :--- | :--- |
| *Official URL*:http://courses.ajoshi.org/fhir/CapabilityStatement/FHIRCourseCapabilityStatement | *Version*:0.1.0 |
| Draft as of 2025-11-23 | *Computable Name*:FHIRCourseCapabilityStatement |

 
FHIR server shall behave in accordance of this capability statement. 

 [Raw OpenAPI-Swagger Definition file](FHIRCourseCapabilityStatement.openapi.json) | [Download](FHIRCourseCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "FHIRCourseCapabilityStatement",
  "url" : "http://courses.ajoshi.org/fhir/CapabilityStatement/FHIRCourseCapabilityStatement",
  "version" : "0.1.0",
  "name" : "FHIRCourseCapabilityStatement",
  "title" : "FHIR Course CapabilityStatement",
  "status" : "draft",
  "date" : "2025-11-23T12:34:56Z",
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
  "description" : "FHIR server shall behave in accordance of this capability statement.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Patient",
          "profile" : "http://courses.ajoshi.org/fhir/StructureDefinition/fhir-course-patient01",
          "interaction" : [
            {
              "code" : "read"
            }
          ],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token"
            }
          ]
        }
      ]
    }
  ]
}

```
