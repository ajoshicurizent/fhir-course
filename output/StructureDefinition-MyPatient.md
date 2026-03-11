# MyPatient - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MyPatient**

## Resource Profile: MyPatient 

| | |
| :--- | :--- |
| *Official URL*:http://courses.ajoshi.org/fhir/StructureDefinition/MyPatient | *Version*:0.1.0 |
| Active as of 2026-03-10 | *Computable Name*:MyPatient |

 
An example profile of the Patient resource. 

**Usages:**

* Examples for this Profile: [Patient/PatientExample](Patient-PatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.fhir-course|current/StructureDefinition/MyPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MyPatient.csv), [Excel](StructureDefinition-MyPatient.xlsx), [Schematron](StructureDefinition-MyPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MyPatient",
  "url" : "http://courses.ajoshi.org/fhir/StructureDefinition/MyPatient",
  "version" : "0.1.0",
  "name" : "MyPatient",
  "status" : "active",
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
  "description" : "An example profile of the Patient resource.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
