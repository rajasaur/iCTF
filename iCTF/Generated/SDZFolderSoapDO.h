/*
	SDZFolderSoapDO.h
	The interface definition of properties and methods for the SDZFolderSoapDO object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZObjectSoapDO.h"
@class SDZObjectSoapDO;


@interface SDZFolderSoapDO : SDZObjectSoapDO
{
	NSString* _description;
	NSString* _parentFolderId;
	NSString* _path;
	NSString* _projectId;
	NSString* _title;
	
}
		
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSString* parentFolderId;
	@property (retain, nonatomic) NSString* path;
	@property (retain, nonatomic) NSString* projectId;
	@property (retain, nonatomic) NSString* title;

	+ (SDZFolderSoapDO*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
