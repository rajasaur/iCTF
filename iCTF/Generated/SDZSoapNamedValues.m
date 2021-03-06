/*
	SDZSoapNamedValues.h
	The implementation of properties and methods for the SDZSoapNamedValues object.
	Generated by SudzC.com
*/
#import "SDZSoapNamedValues.h"

#import "SDZArrayOf_xsd_string.h"
#import "SDZArrayOf_xsd_string.h"
@implementation SDZSoapNamedValues
	@synthesize names = _names;
	@synthesize values = _values;

	- (id) init
	{
		if(self = [super init])
		{
			self.names = nil; // [[SDZArrayOf_xsd_string alloc] init];
			self.values = nil; // [[SDZArrayOf_xsd_string alloc] init];

		}
		return self;
	}

	+ (SDZSoapNamedValues*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZSoapNamedValues*)[[[SDZSoapNamedValues alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.names = [[SDZArrayOf_xsd_string newWithNode: [Soap getNode: node withName: @"names"]] object];
			self.values = [[SDZArrayOf_xsd_string newWithNode: [Soap getNode: node withName: @"values"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SoapNamedValues"];
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
		if (self.names != nil) [s appendString: [self.names serialize: @"names"]];
		if (self.values != nil) [s appendString: [self.values serialize: @"values"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZSoapNamedValues class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.names != nil) { [self.names release]; }
		if(self.values != nil) { [self.values release]; }
		[super dealloc];
	}

@end
