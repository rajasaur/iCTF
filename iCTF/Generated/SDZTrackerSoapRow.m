/*
	SDZTrackerSoapRow.h
	The implementation of properties and methods for the SDZTrackerSoapRow object.
	Generated by SudzC.com
*/
#import "SDZTrackerSoapRow.h"

@implementation SDZTrackerSoapRow
	@synthesize icon = _icon;
	@synthesize lastEditedByFullname = _lastEditedByFullname;
	@synthesize lastEditedByUsername = _lastEditedByUsername;
	@synthesize lastEditedDate = _lastEditedDate;

	- (id) init
	{
		if(self = [super init])
		{
			self.icon = nil;
			self.lastEditedByFullname = nil;
			self.lastEditedByUsername = nil;
			self.lastEditedDate = nil;

		}
		return self;
	}

	+ (SDZTrackerSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZTrackerSoapRow*)[[[SDZTrackerSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.icon = [Soap getNodeValue: node withName: @"icon"];
			self.lastEditedByFullname = [Soap getNodeValue: node withName: @"lastEditedByFullname"];
			self.lastEditedByUsername = [Soap getNodeValue: node withName: @"lastEditedByUsername"];
			self.lastEditedDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"lastEditedDate"]];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"TrackerSoapRow"];
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
		if (self.icon != nil) [s appendFormat: @"<icon>%@</icon>", [[self.icon stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastEditedByFullname != nil) [s appendFormat: @"<lastEditedByFullname>%@</lastEditedByFullname>", [[self.lastEditedByFullname stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastEditedByUsername != nil) [s appendFormat: @"<lastEditedByUsername>%@</lastEditedByUsername>", [[self.lastEditedByUsername stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastEditedDate != nil) [s appendFormat: @"<lastEditedDate>%@</lastEditedDate>", [Soap getDateString: self.lastEditedDate]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZTrackerSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.icon != nil) { [self.icon release]; }
		if(self.lastEditedByFullname != nil) { [self.lastEditedByFullname release]; }
		if(self.lastEditedByUsername != nil) { [self.lastEditedByUsername release]; }
		if(self.lastEditedDate != nil) { [self.lastEditedDate release]; }
		[super dealloc];
	}

@end
