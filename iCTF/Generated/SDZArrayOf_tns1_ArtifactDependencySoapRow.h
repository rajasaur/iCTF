/*
	SDZArrayOf_tns1_ArtifactDependencySoapRow.h
	The interface definition of properties and methods for the SDZArrayOf_tns1_ArtifactDependencySoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZArrayOf_tns1_ArtifactDependencySoapRow : SoapObject
{
	
}
		

	+ (SDZArrayOf_tns1_ArtifactDependencySoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
