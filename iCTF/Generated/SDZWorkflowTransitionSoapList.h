/*
	SDZWorkflowTransitionSoapList.h
	The interface definition of properties and methods for the SDZWorkflowTransitionSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_WorkflowTransitionSoapRow;

@interface SDZWorkflowTransitionSoapList : SoapObject
{
	SDZArrayOf_tns1_WorkflowTransitionSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_WorkflowTransitionSoapRow* dataRows;

	+ (SDZWorkflowTransitionSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
