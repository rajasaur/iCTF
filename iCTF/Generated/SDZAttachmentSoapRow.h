/*
	SDZAttachmentSoapRow.h
	The interface definition of properties and methods for the SDZAttachmentSoapRow object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZAttachmentSoapRow : SoapObject
{
	NSString* _attachmentId;
	NSString* _createdBy;
	NSString* _createdByFullname;
	NSDate* _dateCreated;
	NSString* _fileName;
	NSString* _fileSize;
	NSString* _mimetype;
	NSString* _rawFileId;
	NSString* _storedFileId;
	NSString* _transactionId;
	
}
		
	@property (retain, nonatomic) NSString* attachmentId;
	@property (retain, nonatomic) NSString* createdBy;
	@property (retain, nonatomic) NSString* createdByFullname;
	@property (retain, nonatomic) NSDate* dateCreated;
	@property (retain, nonatomic) NSString* fileName;
	@property (retain, nonatomic) NSString* fileSize;
	@property (retain, nonatomic) NSString* mimetype;
	@property (retain, nonatomic) NSString* rawFileId;
	@property (retain, nonatomic) NSString* storedFileId;
	@property (retain, nonatomic) NSString* transactionId;

	+ (SDZAttachmentSoapRow*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
