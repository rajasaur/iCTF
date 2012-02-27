/*
	SDZArtifactSoapList.h
	The implementation of properties and methods for the SDZArtifactSoapList object.
	Generated by SudzC.com
*/
#import "SDZArtifactSoapRow.h"
#import "SDZArtifactSoapList.h"

#import "SDZArrayOf_tns1_ArtifactSoapRow.h"
@implementation SDZArtifactSoapList
	@synthesize dataRows = _dataRows;

	- (id) init
	{
		if(self = [super init])
		{
			self.dataRows = nil; // [[SDZArrayOf_tns1_ArtifactSoapRow alloc] init];

		}
		return self;
	}

	+ (SDZArtifactSoapList*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZArtifactSoapList*)[[[SDZArtifactSoapList alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
            NSUInteger totalElements = [[node children] count];
            self.dataRows = [[NSMutableArray alloc] initWithCapacity:totalElements];
            for(CXMLNode* child in [node children]) {
                [self.dataRows addObject:[[SDZArtifactSoapRow newWithNode: [Soap getNode: child withName:@"dataRows"]] object]];
            }
			//self.dataRows = [[SDZArrayOf_tns1_ArtifactSoapRow newWithNode: [Soap getNode: node withName: @"dataRows"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArtifactSoapList"];
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

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZArtifactSoapList class]]) {
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
