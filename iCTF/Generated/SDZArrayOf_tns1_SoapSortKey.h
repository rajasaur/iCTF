/*
	SDZArrayOf_tns1_SoapSortKey.h
	The interface definition of properties and methods for the SDZArrayOf_tns1_SoapSortKey object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZArrayOf_tns1_SoapSortKey : SoapObject
{
	
}
		

	+ (SDZArrayOf_tns1_SoapSortKey*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end