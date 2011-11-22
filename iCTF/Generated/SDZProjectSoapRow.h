/*
	SDZProjectSoapRow.h
	The interface definition of properties and methods for the SDZProjectSoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZProjectSoapRow : SoapObject
{
	NSDate* _dateCreated;
	NSString* _description;
	NSString* _hierarchyPath;
	NSString* __id;
	BOOL _locked;
	NSString* _parentProjectId;
	NSString* _path;
	NSString* _title;
	
}
		
	@property (retain, nonatomic) NSDate* dateCreated;
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSString* hierarchyPath;
	@property (retain, nonatomic) NSString* _id;
	@property BOOL locked;
	@property (retain, nonatomic) NSString* parentProjectId;
	@property (retain, nonatomic) NSString* path;
	@property (retain, nonatomic) NSString* title;

	+ (SDZProjectSoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
