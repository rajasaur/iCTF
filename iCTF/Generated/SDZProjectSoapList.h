/*
	SDZProjectSoapList.h
	The interface definition of properties and methods for the SDZProjectSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_ProjectSoapRow;

@interface SDZProjectSoapList : SoapObject
{
	SDZArrayOf_tns1_ProjectSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_ProjectSoapRow* dataRows;

	+ (SDZProjectSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
