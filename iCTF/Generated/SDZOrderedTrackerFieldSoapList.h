/*
	SDZOrderedTrackerFieldSoapList.h
	The interface definition of properties and methods for the SDZOrderedTrackerFieldSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_OrderedTrackerFieldSoapRow;

@interface SDZOrderedTrackerFieldSoapList : SoapObject
{
	SDZArrayOf_tns1_OrderedTrackerFieldSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_OrderedTrackerFieldSoapRow* dataRows;

	+ (SDZOrderedTrackerFieldSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
