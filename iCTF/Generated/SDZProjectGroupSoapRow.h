/*
	SDZProjectGroupSoapRow.h
	The interface definition of properties and methods for the SDZProjectGroupSoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZProjectGroupSoapRow : SoapObject
{
	NSDate* _dateCreated;
	NSString* _description;
	NSString* __id;
	int _memberProjects;
	NSString* _path;
	NSString* _title;
	
}
		
	@property (retain, nonatomic) NSDate* dateCreated;
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSString* _id;
	@property int memberProjects;
	@property (retain, nonatomic) NSString* path;
	@property (retain, nonatomic) NSString* title;

	+ (SDZProjectGroupSoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end