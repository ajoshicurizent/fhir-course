# Practitioner Example 02 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Practitioner Example 02**

## Example Practitioner: Practitioner Example 02

**identifier**: [PractitionerIdentifierNamingSystem](NamingSystem-PractitionerIdentifierNamingSystem.md)/3241091

**name**: Cardio Specialist 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "456789",
  "identifier" : [
    {
      "system" : "http://ushosp.org/fhir/practitioner-npi",
      "value" : "3241091"
    }
  ],
  "name" : [
    {
      "family" : "Specialist",
      "given" : ["Cardio"],
      "prefix" : ["Dr."]
    }
  ]
}

```
