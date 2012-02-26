/*
	SDZNoSuchRelationshipFault.h
	The interface definition of properties and methods for the SDZNoSuchRelationshipFault object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZWebServiceFault.h"
@class SDZWebServiceFault;


@interface SDZNoSuchRelationshipFault : SDZWebServiceFault
{
	
}
		

	+ (SDZNoSuchRelationshipFault*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end