/*
	SDZArtifactSoapDO.h
	The interface definition of properties and methods for the SDZArtifactSoapDO object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZSoapFieldValues;
#import "SDZItemSoapDO.h"
@class SDZItemSoapDO;


@interface SDZArtifactSoapDO : SDZItemSoapDO
{
	int _actualEffort;
	NSString* _assignedTo;
	BOOL _autosumming;
	NSString* _category;
	NSDate* _closeDate;
	NSString* _customer;
	NSString* _description;
	int _estimatedEffort;
	SDZSoapFieldValues* _flexFields;
	NSString* _group;
	NSString* _planningFolderId;
	int _points;
	int _priority;
	int _remainingEffort;
	NSString* _reportedReleaseId;
	NSString* _resolvedReleaseId;
	NSString* _status;
	NSString* _statusClass;
	
}
		
	@property int actualEffort;
	@property (retain, nonatomic) NSString* assignedTo;
	@property BOOL autosumming;
	@property (retain, nonatomic) NSString* category;
	@property (retain, nonatomic) NSDate* closeDate;
	@property (retain, nonatomic) NSString* customer;
	@property (retain, nonatomic) NSString* description;
	@property int estimatedEffort;
	@property (retain, nonatomic) SDZSoapFieldValues* flexFields;
	@property (retain, nonatomic) NSString* group;
	@property (retain, nonatomic) NSString* planningFolderId;
	@property int points;
	@property int priority;
	@property int remainingEffort;
	@property (retain, nonatomic) NSString* reportedReleaseId;
	@property (retain, nonatomic) NSString* resolvedReleaseId;
	@property (retain, nonatomic) NSString* status;
	@property (retain, nonatomic) NSString* statusClass;

	+ (SDZArtifactSoapDO*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end