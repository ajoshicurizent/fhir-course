# FHIR course Patient Profile 01 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR course Patient Profile 01**

## Resource Profile: FHIR course Patient Profile 01 

| | |
| :--- | :--- |
| *Official URL*:http://courses.ajoshi.org/fhir/StructureDefinition/fhir-course-patient01 | *Version*:0.1.0 |
| Active as of 2026-03-25 | *Computable Name*:ResourceConceptAssignmentPatientProfile01 |
| **Copyright/Legal**: Used by permission of FHIR course Author. | |

 
The patient profile to validate resource instance participants need to create for session 2: Patient resource Assignment. 

 
Validate Patient resource instance required for the assignment against this profile. 

**Usages:**

* Examples for this Profile: [Patient/patient-example-001](Patient-patient-example-001.md)
* CapabilityStatements using this Profile: [FHIR Course CapabilityStatement](CapabilityStatement-FHIRCourseCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.fhir-course|current/StructureDefinition/fhir-course-patient01)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fhir-course-patient01.csv), [Excel](StructureDefinition-fhir-course-patient01.xlsx), [Schematron](StructureDefinition-fhir-course-patient01.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fhir-course-patient01",
  "url" : "http://courses.ajoshi.org/fhir/StructureDefinition/fhir-course-patient01",
  "version" : "0.1.0",
  "name" : "ResourceConceptAssignmentPatientProfile01",
  "title" : "FHIR course Patient Profile 01",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-25T09:53:08+03:00",
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
  "description" : "The patient profile to validate resource instance participants need to create for session 2: Patient resource Assignment.",
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
  "purpose" : "Validate Patient resource instance required for the assignment against this profile.",
  "copyright" : "Used by permission of FHIR course Author.",
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
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.extension:patientNationality",
        "path" : "Patient.extension",
        "sliceName" : "patientNationality",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://courses.ajoshi.org/fhir/StructureDefinition/patient-nationality-extension"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "patternUri" : "http://ushosp.org/fhir/pat-identifier/mrn"
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "min" : 1
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "min" : 2
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "telecom can have email, phone number etc. At least one of the telecom repetitions shall have phone number.",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.value",
        "path" : "Patient.telecom.value",
        "min" : 1
      },
      {
        "id" : "Patient.telecom:phoneNumber",
        "path" : "Patient.telecom",
        "sliceName" : "phoneNumber",
        "short" : "Patient phone number- landline or mobile.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.telecom:phoneNumber.system",
        "path" : "Patient.telecom.system",
        "patternCode" : "phone"
      },
      {
        "id" : "Patient.telecom:phoneNumber.use",
        "path" : "Patient.telecom.use",
        "patternCode" : "mobile"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.address.use",
        "path" : "Patient.address.use",
        "min" : 1,
        "patternCode" : "home"
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "min" : 1
      },
      {
        "id" : "Patient.address.line.extension",
        "path" : "Patient.address.line.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.address.line.extension:houseNumberNumeric",
        "path" : "Patient.address.line.extension",
        "sliceName" : "houseNumberNumeric",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumberNumeric|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Patient.address.city",
        "path" : "Patient.address.city",
        "min" : 1
      },
      {
        "id" : "Patient.address.postalCode",
        "path" : "Patient.address.postalCode",
        "min" : 1
      },
      {
        "id" : "Patient.address.country",
        "path" : "Patient.address.country",
        "min" : 1
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.contact.relationship",
        "path" : "Patient.contact.relationship",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.contact.relationship.coding",
        "path" : "Patient.contact.relationship.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "closed"
        },
        "min" : 2,
        "max" : "2"
      },
      {
        "id" : "Patient.contact.relationship.coding:nextOfKin",
        "path" : "Patient.contact.relationship.coding",
        "sliceName" : "nextOfKin",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.contact.relationship.coding:nextOfKin.system",
        "path" : "Patient.contact.relationship.coding.system",
        "min" : 1,
        "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0131"
      },
      {
        "id" : "Patient.contact.relationship.coding:nextOfKin.code",
        "path" : "Patient.contact.relationship.coding.code",
        "min" : 1,
        "patternCode" : "N"
      },
      {
        "id" : "Patient.contact.relationship.coding:customMth",
        "path" : "Patient.contact.relationship.coding",
        "sliceName" : "customMth",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.contact.relationship.coding:customMth.system",
        "path" : "Patient.contact.relationship.coding.system",
        "min" : 1
      },
      {
        "id" : "Patient.contact.relationship.coding:customMth.code",
        "path" : "Patient.contact.relationship.coding.code",
        "min" : 1,
        "patternCode" : "MTH"
      },
      {
        "id" : "Patient.contact.name",
        "path" : "Patient.contact.name",
        "min" : 1
      },
      {
        "id" : "Patient.contact.name.family",
        "path" : "Patient.contact.name.family",
        "min" : 1
      },
      {
        "id" : "Patient.contact.name.given",
        "path" : "Patient.contact.name.given",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "reference"
            },
            {
              "type" : "exists",
              "path" : "identifier"
            }
          ],
          "rules" : "closed"
        },
        "min" : 2,
        "max" : "2",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
          }
        ]
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByResourceId",
        "path" : "Patient.generalPractitioner",
        "sliceName" : "practitionerByResourceId",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByResourceId.reference",
        "path" : "Patient.generalPractitioner.reference",
        "min" : 1
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByResourceId.identifier",
        "path" : "Patient.generalPractitioner.identifier",
        "max" : "0"
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByIdentifier",
        "path" : "Patient.generalPractitioner",
        "sliceName" : "practitionerByIdentifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByIdentifier.reference",
        "path" : "Patient.generalPractitioner.reference",
        "max" : "0"
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByIdentifier.identifier",
        "path" : "Patient.generalPractitioner.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByIdentifier.identifier.system",
        "path" : "Patient.generalPractitioner.identifier.system",
        "min" : 1,
        "patternUri" : "http://ushosp.org/fhir/practitioner-npi"
      },
      {
        "id" : "Patient.generalPractitioner:practitionerByIdentifier.identifier.value",
        "path" : "Patient.generalPractitioner.identifier.value",
        "min" : 1,
        "patternString" : "9087612"
      }
    ]
  }
}

```
