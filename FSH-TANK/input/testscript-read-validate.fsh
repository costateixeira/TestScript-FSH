Instance: testscript-read-validate-json
InstanceOf: TestScript

* insert TSMetadata(testscript-read-validate-json,2022-06-08,"HL7 FHIR R4 TestScript Read Validate","Example TestScript to test Patient read and profile validation")
* insert TSOrigin(1)
* insert TSDestination(1)

* insert TSBaseProfile(Patient)

* insert TSVariableDynamic("patientReadId","example","[resource.id]","Enter a known Patient resource id on the destination system.")

* insert TSTest(PatientReadValidate, "Test Patient read on destination server and assert returned Patient passes validation")
* insert TSTestOperationResource(#read,#Patient,#json,1,1,"Patient Read")
* test[=].action[=].operation.params = "/${patientReadId}"
* insert TSTestAssert("Confirm that the returned response code is 200 OK.", false, #response)
* test[=].action[=].assert.responseCode = "200"
* insert TSTestAssert("Confirm that the returned response payload is a Patient.", false, #response)
* test[=].action[=].assert.resource = #Patient
* insert TSTestAssert("Confirm that the returned Patient conforms to the Base FHIR Patient profile.", false, #response)
* test[=].action[=].assert.validateProfileId = "PatientProfile"

Instance: testscript-read-validate-xml
InstanceOf: TestScript

* insert TSMetadata(testscript-read-validate-xml,2022-06-08,"HL7 FHIR R4 TestScript Read Validate","Example TestScript to test Patient read and profile validation")
* insert TSOrigin(1)
* insert TSDestination(1)

* insert TSBaseProfile(Patient)

* insert TSVariableDynamic("patientReadId","example","[resource.id]","Enter a known Patient resource id on the destination system.")

* insert TSTest(PatientReadValidate, "Test Patient read on destination server and assert returned Patient passes validation")
* insert TSTestOperationResource(#read,#Patient,#xml,1,1,"Patient Read")
* test[=].action[=].operation.params = "/${patientReadId}"
* insert TSTestAssert("Confirm that the returned response code is 200 OK.", false, #response)
* test[=].action[=].assert.responseCode = "200"
* insert TSTestAssert("Confirm that the returned response payload is a Patient.", false, #response)
* test[=].action[=].assert.resource = #Patient
* insert TSTestAssert("Confirm that the returned Patient conforms to the Base FHIR Patient profile.", false, #response)
* test[=].action[=].assert.validateProfileId = "PatientProfile"
