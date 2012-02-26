/*
	SDZArtifactSoapList.h
	The interface definition of properties and methods for the SDZArtifactSoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_ArtifactSoapRow;

@interface SDZArtifactSoapList : SoapObject
{
	SDZArrayOf_tns1_ArtifactSoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_ArtifactSoapRow* dataRows;

	+ (SDZArtifactSoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
