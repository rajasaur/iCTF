/*
	SDZItemSoapDO.h
	The implementation of properties and methods for the SDZItemSoapDO object.
	Generated by SudzC.com
*/
#import "SDZItemSoapDO.h"

@implementation SDZItemSoapDO
	@synthesize folderId = _folderId;
	@synthesize path = _path;
	@synthesize title = _title;

	- (id) init
	{
		if(self = [super init])
		{
			self.folderId = nil;
			self.path = nil;
			self.title = nil;

		}
		return self;
	}

	+ (SDZItemSoapDO*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZItemSoapDO*)[[[SDZItemSoapDO alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.folderId = [Soap getNodeValue: node withName: @"folderId"];
			self.path = [Soap getNodeValue: node withName: @"path"];
			self.title = [Soap getNodeValue: node withName: @"title"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ItemSoapDO"];
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
		if (self.folderId != nil) [s appendFormat: @"<folderId>%@</folderId>", [[self.folderId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
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
		if(object != nil && [object isKindOfClass:[SDZItemSoapDO class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.folderId != nil) { [self.folderId release]; }
		if(self.path != nil) { [self.path release]; }
		if(self.title != nil) { [self.title release]; }
		[super dealloc];
	}

@end
