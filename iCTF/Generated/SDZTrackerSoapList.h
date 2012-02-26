/*
	SDZTrackerSoapList.h
	The interface definition of properties and methods for the SDZTrackerSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_TrackerSoapRow;
#import "SDZFolderSoapList.h"
@class SDZFolderSoapList;


@interface SDZTrackerSoapList : SDZFolderSoapList
{
	SDZArrayOf_tns1_TrackerSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_TrackerSoapRow* dataRows;

	+ (SDZTrackerSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
