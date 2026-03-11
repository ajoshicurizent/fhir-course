// This is a FSH file creating some rules and trying out FSH insert rules functionality
// This is profile common elements
RuleSet: CommonMetadataRuleSet
* ^status = #active
* ^version = #0.1.0
* ^copyright = "Used by permission of FHIR course Author."
* ^experimental = false
* ^contact.telecom.system = #email
* ^contact.telecom.value = "support@curizent.com"

RuleSet: Name(first, last)
* name[+].given = "{first}"
* name[=].family = "{last}"