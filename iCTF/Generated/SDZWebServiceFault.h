/*
	SDZWebServiceFault.h
	The interface definition of properties and methods for the SDZWebServiceFault object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZWebServiceFault : SoapObject
{
	
}
		

	+ (SDZWebServiceFault*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
