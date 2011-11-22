/*
	SDZSoapFilter.h
	The interface definition of properties and methods for the SDZSoapFilter object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZSoapFilter : SoapObject
{
	NSString* _name;
	NSString* _value;
	
}
		
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) NSString* value;

	+ (SDZSoapFilter*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end