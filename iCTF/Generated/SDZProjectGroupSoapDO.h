/*
	SDZProjectGroupSoapDO.h
	The interface definition of properties and methods for the SDZProjectGroupSoapDO object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZObjectSoapDO.h"
@class SDZObjectSoapDO;


@interface SDZProjectGroupSoapDO : SDZObjectSoapDO
{
	NSString* _description;
	NSString* _path;
	NSString* _title;
	
}
		
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSString* path;
	@property (retain, nonatomic) NSString* title;

	+ (SDZProjectGroupSoapDO*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
