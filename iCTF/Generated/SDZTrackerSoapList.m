/*
	SDZTrackerSoapList.h
	The implementation of properties and methods for the SDZTrackerSoapList object.
	Generated by SudzC.com
*/
#import "SDZTrackerSoapList.h"

#import "SDZArrayOf_tns1_TrackerSoapRow.h"
@implementation SDZTrackerSoapList
	@synthesize dataRows = _dataRows;

	- (id) init
	{
		if(self = [super init])
		{
			self.dataRows = nil; // [[SDZArrayOf_tns1_TrackerSoapRow alloc] init];

		}
		return self;
	}

	+ (SDZTrackerSoapList*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZTrackerSoapList*)[[[SDZTrackerSoapList alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.dataRows = [[SDZArrayOf_tns1_TrackerSoapRow newWithNode: [Soap getNode: node withName: @"dataRows"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"TrackerSoapList"];
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
		if(object != nil && [object isKindOfClass:[SDZTrackerSoapList class]]) {
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
