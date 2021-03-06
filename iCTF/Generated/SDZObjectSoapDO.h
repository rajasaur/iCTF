/*
	SDZObjectSoapDO.h
	The interface definition of properties and methods for the SDZObjectSoapDO object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZObjectSoapDO : SoapObject
{
	NSString* _createdBy;
	NSDate* _createdDate;
	NSString* __id;
	NSString* _lastModifiedBy;
	NSDate* _lastModifiedDate;
	int _version;
	
}
		
	@property (retain, nonatomic) NSString* createdBy;
	@property (retain, nonatomic) NSDate* createdDate;
	@property (retain, nonatomic) NSString* _id;
	@property (retain, nonatomic) NSString* lastModifiedBy;
	@property (retain, nonatomic) NSDate* lastModifiedDate;
	@property int version;

	+ (SDZObjectSoapDO*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
