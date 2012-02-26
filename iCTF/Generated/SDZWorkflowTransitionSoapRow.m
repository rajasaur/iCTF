/*
	SDZWorkflowTransitionSoapRow.h
	The implementation of properties and methods for the SDZWorkflowTransitionSoapRow object.
	Generated by SudzC.com
*/
#import "SDZWorkflowTransitionSoapRow.h"

#import "SDZArrayOf_xsd_string.h"
@implementation SDZWorkflowTransitionSoapRow
	@synthesize displayOrder = _displayOrder;
	@synthesize fromStatusName = _fromStatusName;
	@synthesize requiredFields = _requiredFields;
	@synthesize toStatusName = _toStatusName;

	- (id) init
	{
		if(self = [super init])
		{
			self.fromStatusName = nil;
			self.requiredFields = nil; // [[SDZArrayOf_xsd_string alloc] init];
			self.toStatusName = nil;

		}
		return self;
	}

	+ (SDZWorkflowTransitionSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZWorkflowTransitionSoapRow*)[[[SDZWorkflowTransitionSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.displayOrder = [[Soap getNodeValue: node withName: @"displayOrder"] intValue];
			self.fromStatusName = [Soap getNodeValue: node withName: @"fromStatusName"];
			self.requiredFields = [[SDZArrayOf_xsd_string newWithNode: [Soap getNode: node withName: @"requiredFields"]] object];
			self.toStatusName = [Soap getNodeValue: node withName: @"toStatusName"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WorkflowTransitionSoapRow"];
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
		[s appendFormat: @"<displayOrder>%@</displayOrder>", [NSString stringWithFormat: @"%i", self.displayOrder]];
		if (self.fromStatusName != nil) [s appendFormat: @"<fromStatusName>%@</fromStatusName>", [[self.fromStatusName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.requiredFields != nil) [s appendString: [self.requiredFields serialize: @"requiredFields"]];
		if (self.toStatusName != nil) [s appendFormat: @"<toStatusName>%@</toStatusName>", [[self.toStatusName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZWorkflowTransitionSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.fromStatusName != nil) { [self.fromStatusName release]; }
		if(self.requiredFields != nil) { [self.requiredFields release]; }
		if(self.toStatusName != nil) { [self.toStatusName release]; }
		[super dealloc];
	}

@end