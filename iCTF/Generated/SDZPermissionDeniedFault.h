/*
	SDZPermissionDeniedFault.h
	The interface definition of properties and methods for the SDZPermissionDeniedFault object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZWebServiceFault.h"
@class SDZWebServiceFault;


@interface SDZPermissionDeniedFault : SDZWebServiceFault
{
	
}
		

	+ (SDZPermissionDeniedFault*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
