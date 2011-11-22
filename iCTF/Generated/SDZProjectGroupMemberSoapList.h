/*
	SDZProjectGroupMemberSoapList.h
	The interface definition of properties and methods for the SDZProjectGroupMemberSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_ProjectGroupMemberSoapRow;

@interface SDZProjectGroupMemberSoapList : SoapObject
{
	SDZArrayOf_tns1_ProjectGroupMemberSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_ProjectGroupMemberSoapRow* dataRows;

	+ (SDZProjectGroupMemberSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end