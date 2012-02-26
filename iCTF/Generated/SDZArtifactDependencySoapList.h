/*
	SDZArtifactDependencySoapList.h
	The interface definition of properties and methods for the SDZArtifactDependencySoapList object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZArrayOf_tns1_ArtifactDependencySoapRow;

@interface SDZArtifactDependencySoapList : SoapObject
{
	SDZArrayOf_tns1_ArtifactDependencySoapRow* _dataRows;
	
}
		
	@property (retain, nonatomic) SDZArrayOf_tns1_ArtifactDependencySoapRow* dataRows;

	+ (SDZArtifactDependencySoapList*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
