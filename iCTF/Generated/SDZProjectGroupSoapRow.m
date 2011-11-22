/*
	SDZProjectGroupSoapRow.h
	The implementation of properties and methods for the SDZProjectGroupSoapRow object.
	Generated by SudzC.com
*/
#import "SDZProjectGroupSoapRow.h"

@implementation SDZProjectGroupSoapRow
	@synthesize dateCreated = _dateCreated;
	@synthesize description = _description;
	@synthesize _id = __id;
	@synthesize memberProjects = _memberProjects;
	@synthesize path = _path;
	@synthesize title = _title;

	- (id) init
	{
		if(self = [super init])
		{
			self.dateCreated = nil;
			self.description = nil;
			self._id = nil;
			self.path = nil;
			self.title = nil;

		}
		return self;
	}

	+ (SDZProjectGroupSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZProjectGroupSoapRow*)[[[SDZProjectGroupSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.dateCreated = [Soap dateFromString: [Soap getNodeValue: node withName: @"dateCreated"]];
			self.description = [Soap getNodeValue: node withName: @"description"];
			self._id = [Soap getNodeValue: node withName: @"id"];
			self.memberProjects = [[Soap getNodeValue: node withName: @"memberProjects"] intValue];
			self.path = [Soap getNodeValue: node withName: @"path"];
			self.title = [Soap getNodeValue: node withName: @"title"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ProjectGroupSoapRow"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [[NSMutableString alloc] init];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return [s autorelease];
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.dateCreated != nil) [s appendFormat: @"<dateCreated>%@</dateCreated>", [Soap getDateString: self.dateCreated]];
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self._id != nil) [s appendFormat: @"<id>%@</id>", [[self._id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<memberProjects>%@</memberProjects>", [NSString stringWithFormat: @"%i", self.memberProjects]];
		if (self.path != nil) [s appendFormat: @"<path>%@</path>", [[self.path stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.title != nil) [s appendFormat: @"<title>%@</title>", [[self.title stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZProjectGroupSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.dateCreated != nil) { [self.dateCreated release]; }
		if(self.description != nil) { [self.description release]; }
		if(self._id != nil) { [self._id release]; }
		if(self.path != nil) { [self.path release]; }
		if(self.title != nil) { [self.title release]; }
		[super dealloc];
	}

@end