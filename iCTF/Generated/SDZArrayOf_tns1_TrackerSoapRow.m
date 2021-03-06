/*
	SDZArrayOf_tns1_TrackerSoapRow.h
	The implementation of properties and methods for the SDZArrayOf_tns1_TrackerSoapRow object.
	Generated by SudzC.com
*/
#import "SDZArrayOf_tns1_TrackerSoapRow.h"

@implementation SDZArrayOf_tns1_TrackerSoapRow

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZArrayOf_tns1_TrackerSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZArrayOf_tns1_TrackerSoapRow*)[[[SDZArrayOf_tns1_TrackerSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArrayOf_tns1_TrackerSoapRow"];
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

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZArrayOf_tns1_TrackerSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end
