/*
	SDZFolderSoapRow.h
	The implementation of properties and methods for the SDZFolderSoapRow object.
	Generated by SudzC.com
*/
#import "SDZFolderSoapRow.h"

@implementation SDZFolderSoapRow
	@synthesize createdBy = _createdBy;
	@synthesize createdOn = _createdOn;
	@synthesize description = _description;
	@synthesize _id = __id;
	@synthesize lastModifiedBy = _lastModifiedBy;
	@synthesize lastModifiedOn = _lastModifiedOn;
	@synthesize parentFolderId = _parentFolderId;
	@synthesize path = _path;
	@synthesize projectId = _projectId;
	@synthesize title = _title;

	- (id) init
	{
		if(self = [super init])
		{
			self.createdBy = nil;
			self.createdOn = nil;
			self.description = nil;
			self._id = nil;
			self.lastModifiedBy = nil;
			self.lastModifiedOn = nil;
			self.parentFolderId = nil;
			self.path = nil;
			self.projectId = nil;
			self.title = nil;

		}
		return self;
	}

	+ (SDZFolderSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZFolderSoapRow*)[[[SDZFolderSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.createdBy = [Soap getNodeValue: node withName: @"createdBy"];
			self.createdOn = [Soap dateFromString: [Soap getNodeValue: node withName: @"createdOn"]];
			self.description = [Soap getNodeValue: node withName: @"description"];
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.lastModifiedBy = [Soap getNodeValue: node withName: @"lastModifiedBy"];
			self.lastModifiedOn = [Soap dateFromString: [Soap getNodeValue: node withName: @"lastModifiedOn"]];
			self.parentFolderId = [Soap getNodeValue: node withName: @"parentFolderId"];
			self.path = [Soap getNodeValue: node withName: @"path"];
			self.projectId = [Soap getNodeValue: node withName: @"projectId"];
			self.title = [Soap getNodeValue: node withName: @"title"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"FolderSoapRow"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.createdBy != nil) [s appendFormat: @"<createdBy>%@</createdBy>", [[self.createdBy stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.createdOn != nil) [s appendFormat: @"<createdOn>%@</createdOn>", [Soap getDateString: self.createdOn]];
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self._id != nil) [s appendFormat: @"<id>%@</id>", [[self._id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastModifiedBy != nil) [s appendFormat: @"<lastModifiedBy>%@</lastModifiedBy>", [[self.lastModifiedBy stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastModifiedOn != nil) [s appendFormat: @"<lastModifiedOn>%@</lastModifiedOn>", [Soap getDateString: self.lastModifiedOn]];
		if (self.parentFolderId != nil) [s appendFormat: @"<parentFolderId>%@</parentFolderId>", [[self.parentFolderId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.path != nil) [s appendFormat: @"<path>%@</path>", [[self.path stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.projectId != nil) [s appendFormat: @"<projectId>%@</projectId>", [[self.projectId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.title != nil) [s appendFormat: @"<title>%@</title>", [[self.title stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZFolderSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.createdBy != nil) { [self.createdBy release]; }
		if(self.createdOn != nil) { [self.createdOn release]; }
		if(self.description != nil) { [self.description release]; }
		if(self._id != nil) { [self._id release]; }
		if(self.lastModifiedBy != nil) { [self.lastModifiedBy release]; }
		if(self.lastModifiedOn != nil) { [self.lastModifiedOn release]; }
		if(self.parentFolderId != nil) { [self.parentFolderId release]; }
		if(self.path != nil) { [self.path release]; }
		if(self.projectId != nil) { [self.projectId release]; }
		if(self.title != nil) { [self.title release]; }
		[super dealloc];
	}

@end
