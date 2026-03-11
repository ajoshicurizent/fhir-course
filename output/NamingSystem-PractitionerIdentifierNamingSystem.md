# Practitioner Identifier Namespace - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Practitioner Identifier Namespace**

## NamingSystem: Practitioner Identifier Namespace 

| | |
| :--- | :--- |
| *Official URL*:http://courses.ajoshi.org/fhir/NamingSystem/PractitionerIdentifierNamingSystem | *Version*:0.1.0 |
| Active as of 2026-03-07 | *Computable Name*:PractitionerIdentifierNamingSystem |

 
Namespace definition for practitioner identifier system used in this IG. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PractitionerIdentifierNamingSystem",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://courses.ajoshi.org/fhir/NamingSystem/PractitionerIdentifierNamingSystem"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "0.1.0"
    }
  ],
  "name" : "PractitionerIdentifierNamingSystem",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-07",
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
  "description" : "Namespace definition for practitioner identifier system used in this IG.",
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
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "http://ushosp.org/fhir/practitioner-npi",
      "preferred" : true
    }
  ]
}

```
