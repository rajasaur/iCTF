/*
	SDZRemoveOnlyProjectAdminFault.h
	The implementation of properties and methods for the SDZRemoveOnlyProjectAdminFault object.
	Generated by SudzC.com
*/
#import "SDZRemoveOnlyProjectAdminFault.h"

@implementation SDZRemoveOnlyProjectAdminFault

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZRemoveOnlyProjectAdminFault*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZRemoveOnlyProjectAdminFault*)[[[SDZRemoveOnlyProjectAdminFault alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"RemoveOnlyProjectAdminFault"];
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
		if(object != nil && [object isKindOfClass:[SDZRemoveOnlyProjectAdminFault class]]) {
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
