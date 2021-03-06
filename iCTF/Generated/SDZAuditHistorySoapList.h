/*
	SDZAuditHistorySoapList.h
	The interface definition of properties and methods for the SDZAuditHistorySoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_AuditHistorySoapRow;

@interface SDZAuditHistorySoapList : SoapObject
{
	SDZArrayOf_tns1_AuditHistorySoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_AuditHistorySoapRow* dataRows;

	+ (SDZAuditHistorySoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
