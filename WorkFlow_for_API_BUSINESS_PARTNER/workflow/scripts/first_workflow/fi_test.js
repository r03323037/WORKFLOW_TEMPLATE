/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
// variable



var users = $.usertasks.usertask2.last.recipientUsers;
var user = users[0];
$.context.approver = user;

var mailreceiver = $.info.startedBy;
$.context.mailreceiver = mailreceiver;

$.context.businesspartner = undefined;
$.context.body = undefined;


var body = {
BusinessPartner : $.context.request.BusinessPartner,
Country : $.context.request.Country,
PostalCode : $.context.request.PostalCode,
StreetName : $.context.request.StreetName,
HouseNumber : $.context.request.HouseNumber
};

$.context.businesspartner = $.context.request.BusinessPartner;
$.context.body = body;