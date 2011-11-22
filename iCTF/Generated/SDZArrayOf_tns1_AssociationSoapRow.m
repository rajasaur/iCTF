/*
	SDZArrayOf_tns1_AssociationSoapRow.h
	The implementation of properties and methods for the SDZArrayOf_tns1_AssociationSoapRow array.
	Generated by SudzC.com
*/
#import "SDZArrayOf_tns1_AssociationSoapRow.h"

@implementation SDZArrayOf_tns1_AssociationSoapRow

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[[SDZArrayOf_tns1_AssociationSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZAssociationSoapRow* value = [[SDZAssociationSoapRow newWithNode: child] object];
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
			[s appendString: [item serialize: @"AssociationSoapRow"]];
		}
		return s;
	}
@end
