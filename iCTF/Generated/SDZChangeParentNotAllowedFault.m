/*
	SDZChangeParentNotAllowedFault.h
	The implementation of properties and methods for the SDZChangeParentNotAllowedFault object.
	Generated by SudzC.com
*/
#import "SDZChangeParentNotAllowedFault.h"

@implementation SDZChangeParentNotAllowedFault

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZChangeParentNotAllowedFault*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZChangeParentNotAllowedFault*)[[[SDZChangeParentNotAllowedFault alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ChangeParentNotAllowedFault"];
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
		if(object != nil && [object isKindOfClass:[SDZChangeParentNotAllowedFault class]]) {
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
