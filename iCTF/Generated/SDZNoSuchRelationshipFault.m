/*
	SDZNoSuchRelationshipFault.h
	The implementation of properties and methods for the SDZNoSuchRelationshipFault object.
	Generated by SudzC.com
*/
#import "SDZNoSuchRelationshipFault.h"

@implementation SDZNoSuchRelationshipFault

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZNoSuchRelationshipFault*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZNoSuchRelationshipFault*)[[[SDZNoSuchRelationshipFault alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"NoSuchRelationshipFault"];
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
		if(object != nil && [object isKindOfClass:[SDZNoSuchRelationshipFault class]]) {
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
