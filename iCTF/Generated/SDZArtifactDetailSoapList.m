/*
	SDZArtifactDetailSoapList.h
	The implementation of properties and methods for the SDZArtifactDetailSoapList object.
	Generated by SudzC.com
*/
#import "SDZArtifactDetailSoapList.h"

#import "SDZArrayOf_tns1_ArtifactDetailSoapRow.h"
@implementation SDZArtifactDetailSoapList
	@synthesize dataRows = _dataRows;
	@synthesize fullListSize = _fullListSize;

	- (id) init
	{
		if(self = [super init])
		{
			self.dataRows = nil; // [[SDZArrayOf_tns1_ArtifactDetailSoapRow alloc] init];

		}
		return self;
	}

	+ (SDZArtifactDetailSoapList*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZArtifactDetailSoapList*)[[[SDZArtifactDetailSoapList alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.dataRows = [[SDZArrayOf_tns1_ArtifactDetailSoapRow newWithNode: [Soap getNode: node withName: @"dataRows"]] object];
			self.fullListSize = [[Soap getNodeValue: node withName: @"fullListSize"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArtifactDetailSoapList"];
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
		if (self.dataRows != nil) [s appendString: [self.dataRows serialize: @"dataRows"]];
		[s appendFormat: @"<fullListSize>%@</fullListSize>", [NSString stringWithFormat: @"%i", self.fullListSize]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZArtifactDetailSoapList class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.dataRows != nil) { [self.dataRows release]; }
		[super dealloc];
	}

@end
