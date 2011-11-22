/*
	SDZAuditHistorySoapRow.h
	The implementation of properties and methods for the SDZAuditHistorySoapRow object.
	Generated by SudzC.com
*/
#import "SDZAuditHistorySoapRow.h"

@implementation SDZAuditHistorySoapRow
	@synthesize comment = _comment;
	@synthesize dateModified = _dateModified;
	@synthesize modifiedBy = _modifiedBy;
	@synthesize modifierFullName = _modifierFullName;
	@synthesize newValue = _newValue;
	@synthesize oldValue = _oldValue;
	@synthesize operation = _operation;
	@synthesize propertyName = _propertyName;

	- (id) init
	{
		if(self = [super init])
		{
			self.comment = nil;
			self.dateModified = nil;
			self.modifiedBy = nil;
			self.modifierFullName = nil;
			self.newValue = nil;
			self.oldValue = nil;
			self.operation = nil;
			self.propertyName = nil;

		}
		return self;
	}

	+ (SDZAuditHistorySoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZAuditHistorySoapRow*)[[[SDZAuditHistorySoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.comment = [Soap getNodeValue: node withName: @"comment"];
			self.dateModified = [Soap dateFromString: [Soap getNodeValue: node withName: @"dateModified"]];
			self.modifiedBy = [Soap getNodeValue: node withName: @"modifiedBy"];
			self.modifierFullName = [Soap getNodeValue: node withName: @"modifierFullName"];
			self.newValue = [Soap getNodeValue: node withName: @"newValue"];
			self.oldValue = [Soap getNodeValue: node withName: @"oldValue"];
			self.operation = [Soap getNodeValue: node withName: @"operation"];
			self.propertyName = [Soap getNodeValue: node withName: @"propertyName"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"AuditHistorySoapRow"];
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
		if (self.comment != nil) [s appendFormat: @"<comment>%@</comment>", [[self.comment stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.dateModified != nil) [s appendFormat: @"<dateModified>%@</dateModified>", [Soap getDateString: self.dateModified]];
		if (self.modifiedBy != nil) [s appendFormat: @"<modifiedBy>%@</modifiedBy>", [[self.modifiedBy stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.modifierFullName != nil) [s appendFormat: @"<modifierFullName>%@</modifierFullName>", [[self.modifierFullName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.newValue != nil) [s appendFormat: @"<newValue>%@</newValue>", [[self.newValue stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.oldValue != nil) [s appendFormat: @"<oldValue>%@</oldValue>", [[self.oldValue stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.operation != nil) [s appendFormat: @"<operation>%@</operation>", [[self.operation stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.propertyName != nil) [s appendFormat: @"<propertyName>%@</propertyName>", [[self.propertyName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZAuditHistorySoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.comment != nil) { [self.comment release]; }
		if(self.dateModified != nil) { [self.dateModified release]; }
		if(self.modifiedBy != nil) { [self.modifiedBy release]; }
		if(self.modifierFullName != nil) { [self.modifierFullName release]; }
		if(self.newValue != nil) { [self.newValue release]; }
		if(self.oldValue != nil) { [self.oldValue release]; }
		if(self.operation != nil) { [self.operation release]; }
		if(self.propertyName != nil) { [self.propertyName release]; }
		[super dealloc];
	}

@end
