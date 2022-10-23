Instance: testscript-read-validate-json
InstanceOf: TestScript
* insert read-validate-test(Patient, read-validate-patient-json, #json, "PatientProfile")

Instance: testscript-read-validate-xml
InstanceOf: TestScript
* insert read-validate-test(Patient, read-validate-patient-xml, #xml, "PatientProfile")
//* url = http://hl7.org/fhir/us/carin-bb/TestScript/read-validate-patient-xml
* status = #draft
* name = "XML Test script"