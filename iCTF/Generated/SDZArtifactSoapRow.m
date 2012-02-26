/*
	SDZArtifactSoapRow.h
	The implementation of properties and methods for the SDZArtifactSoapRow object.
	Generated by SudzC.com
*/
#import "SDZArtifactSoapRow.h"

@implementation SDZArtifactSoapRow
	@synthesize actualEffort = _actualEffort;
	@synthesize artifactGroup = _artifactGroup;
	@synthesize assignedToFullname = _assignedToFullname;
	@synthesize assignedToUsername = _assignedToUsername;
	@synthesize autosumming = _autosumming;
	@synthesize category = _category;
	@synthesize closeDate = _closeDate;
	@synthesize customer = _customer;
	@synthesize description = _description;
	@synthesize estimatedEffort = _estimatedEffort;
	@synthesize folderId = _folderId;
	@synthesize folderPathString = _folderPathString;
	@synthesize folderTitle = _folderTitle;
	@synthesize _id = __id;
	@synthesize lastModifiedDate = _lastModifiedDate;
	@synthesize planningFolderId = _planningFolderId;
	@synthesize points = _points;
	@synthesize priority = _priority;
	@synthesize projectId = _projectId;
	@synthesize projectPathString = _projectPathString;
	@synthesize projectTitle = _projectTitle;
	@synthesize remainingEffort = _remainingEffort;
	@synthesize status = _status;
	@synthesize statusClass = _statusClass;
	@synthesize submittedByFullname = _submittedByFullname;
	@synthesize submittedByUsername = _submittedByUsername;
	@synthesize submittedDate = _submittedDate;
	@synthesize title = _title;
	@synthesize version = _version;

	- (id) init
	{
		if(self = [super init])
		{
			self.artifactGroup = nil;
			self.assignedToFullname = nil;
			self.assignedToUsername = nil;
			self.category = nil;
			self.closeDate = nil;
			self.customer = nil;
			self.description = nil;
			self.folderId = nil;
			self.folderPathString = nil;
			self.folderTitle = nil;
			self._id = nil;
			self.lastModifiedDate = nil;
			self.planningFolderId = nil;
			self.projectId = nil;
			self.projectPathString = nil;
			self.projectTitle = nil;
			self.status = nil;
			self.statusClass = nil;
			self.submittedByFullname = nil;
			self.submittedByUsername = nil;
			self.submittedDate = nil;
			self.title = nil;

		}
		return self;
	}

	+ (SDZArtifactSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZArtifactSoapRow*)[[[SDZArtifactSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.actualEffort = [[Soap getNodeValue: node withName: @"actualEffort"] intValue];
			self.artifactGroup = [Soap getNodeValue: node withName: @"artifactGroup"];
			self.assignedToFullname = [Soap getNodeValue: node withName: @"assignedToFullname"];
			self.assignedToUsername = [Soap getNodeValue: node withName: @"assignedToUsername"];
			self.autosumming = [[Soap getNodeValue: node withName: @"autosumming"] boolValue];
			self.category = [Soap getNodeValue: node withName: @"category"];
			self.closeDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"closeDate"]];
			self.customer = [Soap getNodeValue: node withName: @"customer"];
			self.description = [Soap getNodeValue: node withName: @"description"];
			self.estimatedEffort = [[Soap getNodeValue: node withName: @"estimatedEffort"] intValue];
			self.folderId = [Soap getNodeValue: node withName: @"folderId"];
			self.folderPathString = [Soap getNodeValue: node withName: @"folderPathString"];
			self.folderTitle = [Soap getNodeValue: node withName: @"folderTitle"];
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.lastModifiedDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"lastModifiedDate"]];
			self.planningFolderId = [Soap getNodeValue: node withName: @"planningFolderId"];
			self.points = [[Soap getNodeValue: node withName: @"points"] intValue];
			self.priority = [[Soap getNodeValue: node withName: @"priority"] intValue];
			self.projectId = [Soap getNodeValue: node withName: @"projectId"];
			self.projectPathString = [Soap getNodeValue: node withName: @"projectPathString"];
			self.projectTitle = [Soap getNodeValue: node withName: @"projectTitle"];
			self.remainingEffort = [[Soap getNodeValue: node withName: @"remainingEffort"] intValue];
			self.status = [Soap getNodeValue: node withName: @"status"];
			self.statusClass = [Soap getNodeValue: node withName: @"statusClass"];
			self.submittedByFullname = [Soap getNodeValue: node withName: @"submittedByFullname"];
			self.submittedByUsername = [Soap getNodeValue: node withName: @"submittedByUsername"];
			self.submittedDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"submittedDate"]];
			self.title = [Soap getNodeValue: node withName: @"title"];
			self.version = [[Soap getNodeValue: node withName: @"version"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArtifactSoapRow"];
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
		[s appendFormat: @"<actualEffort>%@</actualEffort>", [NSString stringWithFormat: @"%i", self.actualEffort]];
		if (self.artifactGroup != nil) [s appendFormat: @"<artifactGroup>%@</artifactGroup>", [[self.artifactGroup stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.assignedToFullname != nil) [s appendFormat: @"<assignedToFullname>%@</assignedToFullname>", [[self.assignedToFullname stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.assignedToUsername != nil) [s appendFormat: @"<assignedToUsername>%@</assignedToUsername>", [[self.assignedToUsername stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<autosumming>%@</autosumming>", (self.autosumming)?@"true":@"false"];
		if (self.category != nil) [s appendFormat: @"<category>%@</category>", [[self.category stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.closeDate != nil) [s appendFormat: @"<closeDate>%@</closeDate>", [Soap getDateString: self.closeDate]];
		if (self.customer != nil) [s appendFormat: @"<customer>%@</customer>", [[self.customer stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<estimatedEffort>%@</estimatedEffort>", [NSString stringWithFormat: @"%i", self.estimatedEffort]];
		if (self.folderId != nil) [s appendFormat: @"<folderId>%@</folderId>", [[self.folderId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.folderPathString != nil) [s appendFormat: @"<folderPathString>%@</folderPathString>", [[self.folderPathString stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.folderTitle != nil) [s appendFormat: @"<folderTitle>%@</folderTitle>", [[self.folderTitle stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self._id != nil) [s appendFormat: @"<id>%@</id>", [[self._id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastModifiedDate != nil) [s appendFormat: @"<lastModifiedDate>%@</lastModifiedDate>", [Soap getDateString: self.lastModifiedDate]];
		if (self.planningFolderId != nil) [s appendFormat: @"<planningFolderId>%@</planningFolderId>", [[self.planningFolderId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<points>%@</points>", [NSString stringWithFormat: @"%i", self.points]];
		[s appendFormat: @"<priority>%@</priority>", [NSString stringWithFormat: @"%i", self.priority]];
		if (self.projectId != nil) [s appendFormat: @"<projectId>%@</projectId>", [[self.projectId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.projectPathString != nil) [s appendFormat: @"<projectPathString>%@</projectPathString>", [[self.projectPathString stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.projectTitle != nil) [s appendFormat: @"<projectTitle>%@</projectTitle>", [[self.projectTitle stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<remainingEffort>%@</remainingEffort>", [NSString stringWithFormat: @"%i", self.remainingEffort]];
		if (self.status != nil) [s appendFormat: @"<status>%@</status>", [[self.status stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.statusClass != nil) [s appendFormat: @"<statusClass>%@</statusClass>", [[self.statusClass stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.submittedByFullname != nil) [s appendFormat: @"<submittedByFullname>%@</submittedByFullname>", [[self.submittedByFullname stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.submittedByUsername != nil) [s appendFormat: @"<submittedByUsername>%@</submittedByUsername>", [[self.submittedByUsername stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.submittedDate != nil) [s appendFormat: @"<submittedDate>%@</submittedDate>", [Soap getDateString: self.submittedDate]];
		if (self.title != nil) [s appendFormat: @"<title>%@</title>", [[self.title stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<version>%@</version>", [NSString stringWithFormat: @"%i", self.version]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZArtifactSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.artifactGroup != nil) { [self.artifactGroup release]; }
		if(self.assignedToFullname != nil) { [self.assignedToFullname release]; }
		if(self.assignedToUsername != nil) { [self.assignedToUsername release]; }
		if(self.category != nil) { [self.category release]; }
		if(self.closeDate != nil) { [self.closeDate release]; }
		if(self.customer != nil) { [self.customer release]; }
		if(self.description != nil) { [self.description release]; }
		if(self.folderId != nil) { [self.folderId release]; }
		if(self.folderPathString != nil) { [self.folderPathString release]; }
		if(self.folderTitle != nil) { [self.folderTitle release]; }
		if(self._id != nil) { [self._id release]; }
		if(self.lastModifiedDate != nil) { [self.lastModifiedDate release]; }
		if(self.planningFolderId != nil) { [self.planningFolderId release]; }
		if(self.projectId != nil) { [self.projectId release]; }
		if(self.projectPathString != nil) { [self.projectPathString release]; }
		if(self.projectTitle != nil) { [self.projectTitle release]; }
		if(self.status != nil) { [self.status release]; }
		if(self.statusClass != nil) { [self.statusClass release]; }
		if(self.submittedByFullname != nil) { [self.submittedByFullname release]; }
		if(self.submittedByUsername != nil) { [self.submittedByUsername release]; }
		if(self.submittedDate != nil) { [self.submittedDate release]; }
		if(self.title != nil) { [self.title release]; }
		[super dealloc];
	}

@end
