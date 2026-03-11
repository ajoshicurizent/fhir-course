# John Cena - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **John Cena**

## Example Patient: John Cena

Profile: [FHIR course Patient Profile 01](StructureDefinition-fhir-course-patient01.md)

Aditya Kumar Joshi (official) Male, DoB: 1990-05-15 ( http://ushosp.org/fhir/pat-identifier/mrn#PatientMrnNamingSystem#1234567891)

-------

| | |
| :--- | :--- |
| Active: | true |
| Alt. Name: | Robert Smith |
| Contact Detail | * ph: (+91) 9023123456(Mobile)
* Lane no. 15 Bangalore Karnataka 560034 IND (home)
 |
| Next-of-Kin: | * Jasmine Cena 
 |
| Links: | * General Practitioner: [Practitioner Cardio Specialist](Practitioner-456789.md)
* General Practitioner: Identifier: [PractitionerIdentifierNamingSystem](NamingSystem-PractitionerIdentifierNamingSystem.md)/9087612
 |
| FHIR Course Extension Patient Nationality: | * code: Saudi Arabia
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-example-001",
  "meta" : {
    "profile" : [
      "http://courses.ajoshi.org/fhir/StructureDefinition/fhir-course-patient01"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "SAU",
                "display" : "Saudi Arabia"
              }
            ]
          }
        }
      ],
      "url" : "http://courses.ajoshi.org/fhir/StructureDefinition/patient-nationality-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "http://ushosp.org/fhir/pat-identifier/mrn",
      "value" : "1234567891"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Smith",
      "given" : ["Robert"]
    },
    {
      "use" : "official",
      "family" : "Joshi",
      "given" : ["Aditya", "Kumar"],
      "prefix" : ["Mr."]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(+91) 9023123456",
      "use" : "mobile"
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-05-15",
  "address" : [
    {
      "use" : "home",
      "line" : ["Lane no. 15"],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumberNumeric",
              "valueString" : "15"
            }
          ]
        }
      ],
      "city" : "Bangalore",
      "district" : "Bangalore Urban district",
      "state" : "Karnataka",
      "postalCode" : "560034",
      "country" : "IND"
    }
  ],
  "contact" : [
    {
      "relationship" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
              "code" : "N",
              "display" : "Next-of-Kin"
            },
            {
              "system" : "http://ushosp.org/fhir/CodeSystem/patient-contact-relationship",
              "code" : "MTH",
              "display" : "Mother"
            }
          ]
        }
      ],
      "name" : {
        "family" : "Cena",
        "given" : ["Jasmine"]
      }
    }
  ],
  "generalPractitioner" : [
    {
      "reference" : "Practitioner/456789"
    },
    {
      "identifier" : {
        "system" : "http://ushosp.org/fhir/practitioner-npi",
        "value" : "9087612"
      }
    }
  ]
}

```
