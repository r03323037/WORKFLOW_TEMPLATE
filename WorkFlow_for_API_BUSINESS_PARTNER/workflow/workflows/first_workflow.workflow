{
	"contents": {
		"59aad854-9261-4a7c-b29e-b0e978b0ca3d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "first_workflow",
			"subject": "first_workflow",
			"customAttributes": [],
			"name": "first_workflow",
			"documentation": "nope?",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"bf3c0c7c-5fc9-46d6-9b66-895974f1e210": {
					"name": "ExclusiveGateway4"
				},
				"372864d6-415e-4bf0-814f-c891e619605b": {
					"name": "MailTask1"
				},
				"6e67671c-5226-495a-ad70-ec80e0b03189": {
					"name": "MailTask2"
				},
				"8d94eb66-5c73-4302-9a19-c451fd6a15fc": {
					"name": "ScriptTask3"
				},
				"6f9fc745-ce89-47e2-b764-e21d7f658e0d": {
					"name": "ServiceTask7"
				},
				"188330da-99f9-49eb-8c45-3944d98efc13": {
					"name": "UserTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"954eb59c-ae39-4b7e-b956-7767931af9f9": {
					"name": "SequenceFlow17"
				},
				"bf15d4e3-246e-42c3-9db4-9d8d22c46284": {
					"name": "SequenceFlow18"
				},
				"c74f3124-87b8-4ee0-9224-6f741aa14a56": {
					"name": "SequenceFlow19"
				},
				"d7d1bed1-ae38-4573-823e-b407d555f89b": {
					"name": "SequenceFlow21"
				},
				"25257baa-bd0c-424d-a90a-9c601172fb07": {
					"name": "SequenceFlow23"
				},
				"964acec2-afcb-4af0-a05c-b4ccb85c3ca5": {
					"name": "SequenceFlow24"
				},
				"da74d115-f5d9-4f9c-8264-db10d0d8851a": {
					"name": "SequenceFlow25"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"bf3c0c7c-5fc9-46d6-9b66-895974f1e210": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "ExclusiveGateway4",
			"documentation": "cdd",
			"default": "25257baa-bd0c-424d-a90a-9c601172fb07"
		},
		"372864d6-415e-4bf0-814f-c891e619605b": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "8f249b7b-10f0-420c-af00-971987276e71"
		},
		"6e67671c-5226-495a-ad70-ec80e0b03189": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "cb53836a-420d-4901-9654-8e374095af50"
		},
		"8d94eb66-5c73-4302-9a19-c451fd6a15fc": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/first_workflow/fi_test.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"6f9fc745-ce89-47e2-b764-e21d7f658e0d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HAHACLOUD",
			"path": "/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_BusinessPartner('${context.businesspartner}')/to_BusinessPartnerAddress",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/API_BUSINESS_PARTNER",
			"requestVariable": "${context.body}",
			"responseVariable": "${context.response}",
			"id": "servicetask7",
			"name": "ServiceTask7"
		},
		"188330da-99f9-49eb-8c45-3944d98efc13": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve",
			"priority": "VERY_HIGH",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "allen.ck.li@ibm.com",
			"formReference": "/forms/first_workflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "UserTask2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "188330da-99f9-49eb-8c45-3944d98efc13"
		},
		"954eb59c-ae39-4b7e-b956-7767931af9f9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "372864d6-415e-4bf0-814f-c891e619605b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"bf15d4e3-246e-42c3-9db4-9d8d22c46284": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.processor == \"reject\"}",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"documentation": "",
			"sourceRef": "bf3c0c7c-5fc9-46d6-9b66-895974f1e210",
			"targetRef": "6e67671c-5226-495a-ad70-ec80e0b03189"
		},
		"c74f3124-87b8-4ee0-9224-6f741aa14a56": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "6e67671c-5226-495a-ad70-ec80e0b03189",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d7d1bed1-ae38-4573-823e-b407d555f89b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "8d94eb66-5c73-4302-9a19-c451fd6a15fc",
			"targetRef": "bf3c0c7c-5fc9-46d6-9b66-895974f1e210"
		},
		"25257baa-bd0c-424d-a90a-9c601172fb07": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "bf3c0c7c-5fc9-46d6-9b66-895974f1e210",
			"targetRef": "6f9fc745-ce89-47e2-b764-e21d7f658e0d"
		},
		"964acec2-afcb-4af0-a05c-b4ccb85c3ca5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "6f9fc745-ce89-47e2-b764-e21d7f658e0d",
			"targetRef": "372864d6-415e-4bf0-814f-c891e619605b"
		},
		"da74d115-f5d9-4f9c-8264-db10d0d8851a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "188330da-99f9-49eb-8c45-3944d98efc13",
			"targetRef": "8d94eb66-5c73-4302-9a19-c451fd6a15fc"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4d09badb-25c2-4aec-8925-f0ec2ba0b2e9": {},
				"aafdf190-b331-4c19-914f-8b57711b230b": {},
				"0c550c1e-3e5e-4fce-bae2-3be1d3843e27": {},
				"7f8900f4-c446-408f-8f69-2b5cedb0826d": {},
				"5d4c7274-d132-4387-a2da-f535ec866e6a": {},
				"82b68ada-92c4-4cf4-86ae-185143b464f4": {},
				"9b8c2d87-9f00-468d-80c6-4e50556d5d79": {},
				"29789721-5083-4d75-86e4-5a0858528686": {},
				"0cd8f151-a597-41a2-a4e8-0742879e3398": {},
				"5d9bab29-7972-4078-8621-fb8f44ae8252": {},
				"02005946-6249-46b1-8f91-2fe1f0c56bc1": {},
				"87cf6825-f4eb-4af7-be60-af7be349e67f": {},
				"49290953-6744-4753-bd0f-ffab8fdc1b51": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 845.9999964237213,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "87cf6825-f4eb-4af7-be60-af7be349e67f",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4d09badb-25c2-4aec-8925-f0ec2ba0b2e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 76,
			"object": "bf3c0c7c-5fc9-46d6-9b66-895974f1e210"
		},
		"aafdf190-b331-4c19-914f-8b57711b230b": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 675.9999976158142,
			"y": 84.99999970197678,
			"width": 100,
			"height": 60,
			"object": "372864d6-415e-4bf0-814f-c891e619605b"
		},
		"0c550c1e-3e5e-4fce-bae2-3be1d3843e27": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "775.9999976158142,114.99999970197678 810.9999970197678,114.99999970197678 810.9999970197678,97 845.9999964237213,97",
			"sourceSymbol": "aafdf190-b331-4c19-914f-8b57711b230b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "954eb59c-ae39-4b7e-b956-7767931af9f9"
		},
		"7f8900f4-c446-408f-8f69-2b5cedb0826d": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "6e67671c-5226-495a-ad70-ec80e0b03189"
		},
		"5d4c7274-d132-4387-a2da-f535ec866e6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,42 505.9999988079071,42",
			"sourceSymbol": "4d09badb-25c2-4aec-8925-f0ec2ba0b2e9",
			"targetSymbol": "7f8900f4-c446-408f-8f69-2b5cedb0826d",
			"object": "bf15d4e3-246e-42c3-9db4-9d8d22c46284"
		},
		"82b68ada-92c4-4cf4-86ae-185143b464f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 640.9999982118607,42 640.9999982118607,49.000000298023224 810.9999970197678,49.000000298023224 810.9999970197678,97 845.9999964237213,97",
			"sourceSymbol": "7f8900f4-c446-408f-8f69-2b5cedb0826d",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c74f3124-87b8-4ee0-9224-6f741aa14a56"
		},
		"9b8c2d87-9f00-468d-80c6-4e50556d5d79": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 244,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "8d94eb66-5c73-4302-9a19-c451fd6a15fc"
		},
		"29789721-5083-4d75-86e4-5a0858528686": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,97 394,97",
			"sourceSymbol": "9b8c2d87-9f00-468d-80c6-4e50556d5d79",
			"targetSymbol": "4d09badb-25c2-4aec-8925-f0ec2ba0b2e9",
			"object": "d7d1bed1-ae38-4573-823e-b407d555f89b"
		},
		"0cd8f151-a597-41a2-a4e8-0742879e3398": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 505.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "6f9fc745-ce89-47e2-b764-e21d7f658e0d"
		},
		"5d9bab29-7972-4078-8621-fb8f44ae8252": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,152 505.9999988079071,152",
			"sourceSymbol": "4d09badb-25c2-4aec-8925-f0ec2ba0b2e9",
			"targetSymbol": "0cd8f151-a597-41a2-a4e8-0742879e3398",
			"object": "25257baa-bd0c-424d-a90a-9c601172fb07"
		},
		"02005946-6249-46b1-8f91-2fe1f0c56bc1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,152 640.9999982118607,152 640.9999982118607,114.99999970197678 675.9999976158142,114.99999970197678",
			"sourceSymbol": "0cd8f151-a597-41a2-a4e8-0742879e3398",
			"targetSymbol": "aafdf190-b331-4c19-914f-8b57711b230b",
			"object": "964acec2-afcb-4af0-a05c-b4ccb85c3ca5"
		},
		"87cf6825-f4eb-4af7-be60-af7be349e67f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "188330da-99f9-49eb-8c45-3944d98efc13"
		},
		"49290953-6744-4753-bd0f-ffab8fdc1b51": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "87cf6825-f4eb-4af7-be60-af7be349e67f",
			"targetSymbol": "9b8c2d87-9f00-468d-80c6-4e50556d5d79",
			"object": "da74d115-f5d9-4f9c-8264-db10d0d8851a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 2,
			"hubapireference": 18,
			"sequenceflow": 25,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 7,
			"scripttask": 3,
			"mailtask": 2,
			"exclusivegateway": 4,
			"parallelgateway": 1
		},
		"8f249b7b-10f0-420c-af00-971987276e71": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.mailreceiver}",
			"subject": "Accept",
			"text": "Your request has been approved by ${context.approver}",
			"id": "maildefinition1"
		},
		"cb53836a-420d-4901-9654-8e374095af50": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.mailreceiver}",
			"subject": "Reject",
			"text": "Your request has been rejected by ${context.approver}",
			"id": "maildefinition2"
		}
	}
}