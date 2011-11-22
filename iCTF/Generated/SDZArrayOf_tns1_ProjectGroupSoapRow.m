/*
	SDZArrayOf_tns1_ProjectGroupSoapRow.h
	The implementation of properties and methods for the SDZArrayOf_tns1_ProjectGroupSoapRow array.
	Generated by SudzC.com
*/
#import "SDZArrayOf_tns1_ProjectGroupSoapRow.h"
#import "SDZProjectGroupSoapRow.h"

@implementation SDZArrayOf_tns1_ProjectGroupSoapRow

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[[SDZArrayOf_tns1_ProjectGroupSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZProjectGroupSoapRow* value = [[SDZProjectGroupSoapRow newWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"ProjectGroupSoapRow"]];
		}
		return s;
	}
@end
