/*
	SDZSoapFilter.h
	The implementation of properties and methods for the SDZSoapFilter object.
	Generated by SudzC.com
*/
#import "SDZSoapFilter.h"

@implementation SDZSoapFilter
	@synthesize name = _name;
	@synthesize value = _value;

	- (id) init
	{
		if(self = [super init])
		{
			self.name = nil;
			self.value = nil;

		}
		return self;
	}

	+ (SDZSoapFilter*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZSoapFilter*)[[[SDZSoapFilter alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.name = [Soap getNodeValue: node withName: @"name"];
			self.value = [Soap getNodeValue: node withName: @"value"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SoapFilter"];
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
		if (self.name != nil) [s appendFormat: @"<name>%@</name>", [[self.name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.value != nil) [s appendFormat: @"<value>%@</value>", [[self.value stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZSoapFilter class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.name != nil) { [self.name release]; }
		if(self.value != nil) { [self.value release]; }
		[super dealloc];
	}

@end