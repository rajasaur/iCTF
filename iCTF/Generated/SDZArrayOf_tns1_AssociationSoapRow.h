/*
	SDZArrayOf_tns1_AssociationSoapRow.h
	The interface definition of properties and methods for the SDZArrayOf_tns1_AssociationSoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZArrayOf_tns1_AssociationSoapRow : SoapObject
{
	
}
		

	+ (SDZArrayOf_tns1_AssociationSoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
