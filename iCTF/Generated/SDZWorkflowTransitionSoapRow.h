/*
	SDZWorkflowTransitionSoapRow.h
	The interface definition of properties and methods for the SDZWorkflowTransitionSoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_xsd_string;

@interface SDZWorkflowTransitionSoapRow : SoapObject
{
	int _displayOrder;
	NSString* _fromStatusName;
	SDZArrayOf_xsd_string* _requiredFields;
	NSString* _toStatusName;
	
}
		
	@property int displayOrder;
	@property (retain, nonatomic) NSString* fromStatusName;
	@property (retain, nonatomic) SDZArrayOf_xsd_string* requiredFields;
	@property (retain, nonatomic) NSString* toStatusName;

	+ (SDZWorkflowTransitionSoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
