# Artifacts Summary - v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [FHIR Course CapabilityStatement](CapabilityStatement-FHIRCourseCapabilityStatement.md) | FHIR server shall behave in accordance of this capability statement. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FHIR course Patient Profile 01](StructureDefinition-fhir-course-patient01.md) | The patient profile to validate resource instance participants need to create for session 2: Patient resource Assignment. |
| [MyPatient](StructureDefinition-MyPatient.md) | An example profile of the Patient resource. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FHIR Course Extension Patient Nationality](StructureDefinition-patient-nationality-extension.md) | The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Nationality (ISO 3166-1 Alpha-3 Subset)](ValueSet-patient-nationality-valueset.md) | ValueSet for the Countries represented using ISO 3166-1 alpha-3 codes. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ISO 3166-1 Alpha-3 Country Codes](CodeSystem-patient-nationality-codesystem.md) | This CodeSystem resource represents the ISO 3166-1 standard, 2020 edition for country codes, specifically the three-character (alpha-3) codes. It is intended to be a complete and canonical representation of the standard as a FHIR resource. |
| [Patient Contact Relationship Codes](CodeSystem-patient-contact-relationship.md) | Local codes used to describe patient contact relationships for course examples. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Patient MRN Identifier Namespace](NamingSystem-PatientMrnNamingSystem.md) | Namespace definition for patient MRN identifier system used in this IG. |
| [Practitioner Identifier Namespace](NamingSystem-PractitionerIdentifierNamingSystem.md) | Namespace definition for practitioner identifier system used in this IG. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [John Cena](Patient-patient-example-001.md) | sample Patient resource instance to test the FHIR Course Chapter 2: Writing Patient resource instance against the Patient profile. |
| [PatientExample](Patient-PatientExample.md) | An example of a patient with a license to krill. |
| [Practitioner Example 01](Practitioner-122456.md) | Example practitioner with NPI identifier for sample references. |
| [Practitioner Example 02](Practitioner-456789.md) | Example practitioner with resource id for sample references. |

