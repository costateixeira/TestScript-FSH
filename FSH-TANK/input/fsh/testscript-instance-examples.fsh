Instance: testscript-read-validate-json
InstanceOf: TestScript
* insert read-validate-test(Patient, read-validate-patient-json, #json, "PatientProfile")

Instance: testscript-read-validate-xml
InstanceOf: TestScript
* insert read-validate-test(Patient, read-validate-patient-xml, #xml, "PatientProfile")
