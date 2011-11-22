/*
	SDZSystemFault.h
	The interface definition of properties and methods for the SDZSystemFault object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZWebServiceFault.h"
@class SDZWebServiceFault;


@interface SDZSystemFault : SDZWebServiceFault
{
	
}
		

	+ (SDZSystemFault*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end