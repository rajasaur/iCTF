/*
	SDZObjectAlreadyExistsFault.h
	The implementation of properties and methods for the SDZObjectAlreadyExistsFault object.
	Generated by SudzC.com
*/
#import "SDZObjectAlreadyExistsFault.h"

@implementation SDZObjectAlreadyExistsFault

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZObjectAlreadyExistsFault*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZObjectAlreadyExistsFault*)[[[SDZObjectAlreadyExistsFault alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ObjectAlreadyExistsFault"];
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
		if(object != nil && [object isKindOfClass:[SDZObjectAlreadyExistsFault class]]) {
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
