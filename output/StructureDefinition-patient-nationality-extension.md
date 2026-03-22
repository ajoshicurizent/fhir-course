# FHIR Course Extension Patient Nationality - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR Course Extension Patient Nationality**

## Extension: FHIR Course Extension Patient Nationality 

| | |
| :--- | :--- |
| *Official URL*:http://courses.ajoshi.org/fhir/StructureDefinition/patient-nationality-extension | *Version*:0.1.0 |
| Active as of 2026-03-22 | *Computable Name*:PatientNationalityExtension |
| **Copyright/Legal**: Used by permission of FHIR course Author. | |

The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FHIR course Patient Profile 01](StructureDefinition-fhir-course-patient01.md)
* Examples for this Extension: [Patient/patient-example-001](Patient-patient-example-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.fhir-course|current/StructureDefinition/patient-nationality-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-nationality-extension.csv), [Excel](StructureDefinition-patient-nationality-extension.xlsx), [Schematron](StructureDefinition-patient-nationality-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-nationality-extension",
  "url" : "http://courses.ajoshi.org/fhir/StructureDefinition/patient-nationality-extension",
  "version" : "0.1.0",
  "name" : "PatientNationalityExtension",
  "title" : "FHIR Course Extension Patient Nationality",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-22T11:14:06+05:30",
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
  "description" : "The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "FHIR Course Extension Patient Nationality",
        "definition" : "The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:code",
        "path" : "Extension.extension",
        "sliceName" : "code",
        "short" : "country code to represent the Nationality",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:code.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:code.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:code.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://courses.ajoshi.org/fhir/ValueSet/patient-nationality-valueset"
        }
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "short" : "time period when the Nationality is active. If no valuePeriod.end then the Nationality shall be considered currently active",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:period.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:period.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "period"
      },
      {
        "id" : "Extension.extension:period.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://courses.ajoshi.org/fhir/StructureDefinition/patient-nationality-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
