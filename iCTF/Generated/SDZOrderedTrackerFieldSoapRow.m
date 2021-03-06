/*
	SDZOrderedTrackerFieldSoapRow.h
	The implementation of properties and methods for the SDZOrderedTrackerFieldSoapRow object.
	Generated by SudzC.com
*/
#import "SDZOrderedTrackerFieldSoapRow.h"

#import "SDZArrayOf_xsd_string.h"
#import "SDZArrayOf_tns1_TrackerFieldValueSoapDO.h"
#import "SDZSoapNamedValues.h"
@implementation SDZOrderedTrackerFieldSoapRow
	@synthesize defaultTextValue = _defaultTextValue;
	@synthesize defaultUsernames = _defaultUsernames;
	@synthesize disabled = _disabled;
	@synthesize displayLines = _displayLines;
	@synthesize displayOrder = _displayOrder;
	@synthesize displaySize = _displaySize;
	@synthesize fieldDisplayType = _fieldDisplayType;
	@synthesize fieldId = _fieldId;
	@synthesize fieldName = _fieldName;
	@synthesize fieldValues = _fieldValues;
	@synthesize folderId = _folderId;
	@synthesize helpText = _helpText;
	@synthesize hiddenOnCreate = _hiddenOnCreate;
	@synthesize label = _label;
	@synthesize layoutId = _layoutId;
	@synthesize parentChildfieldValueMap = _parentChildfieldValueMap;
	@synthesize parentFieldId = _parentFieldId;
	@synthesize pattern = _pattern;
	@synthesize required = _required;
	@synthesize userFilter = _userFilter;
	@synthesize valueType = _valueType;

	- (id) init
	{
		if(self = [super init])
		{
			self.defaultTextValue = nil;
			self.defaultUsernames = nil; // [[SDZArrayOf_xsd_string alloc] init];
			self.fieldDisplayType = nil;
			self.fieldId = nil;
			self.fieldName = nil;
			self.fieldValues = nil; // [[SDZArrayOf_tns1_TrackerFieldValueSoapDO alloc] init];
			self.folderId = nil;
			self.helpText = nil;
			self.label = nil;
			self.layoutId = nil;
			self.parentChildfieldValueMap = nil; // [[SDZSoapNamedValues alloc] init];
			self.parentFieldId = nil;
			self.pattern = nil;
			self.userFilter = nil;
			self.valueType = nil;

		}
		return self;
	}

	+ (SDZOrderedTrackerFieldSoapRow*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZOrderedTrackerFieldSoapRow*)[[[SDZOrderedTrackerFieldSoapRow alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.defaultTextValue = [Soap getNodeValue: node withName: @"defaultTextValue"];
			self.defaultUsernames = [[SDZArrayOf_xsd_string newWithNode: [Soap getNode: node withName: @"defaultUsernames"]] object];
			self.disabled = [[Soap getNodeValue: node withName: @"disabled"] boolValue];
			self.displayLines = [[Soap getNodeValue: node withName: @"displayLines"] intValue];
			self.displayOrder = [[Soap getNodeValue: node withName: @"displayOrder"] intValue];
			self.displaySize = [[Soap getNodeValue: node withName: @"displaySize"] intValue];
			self.fieldDisplayType = [Soap getNodeValue: node withName: @"fieldDisplayType"];
			self.fieldId = [Soap getNodeValue: node withName: @"fieldId"];
			self.fieldName = [Soap getNodeValue: node withName: @"fieldName"];
			self.fieldValues = [[SDZArrayOf_tns1_TrackerFieldValueSoapDO newWithNode: [Soap getNode: node withName: @"fieldValues"]] object];
			self.folderId = [Soap getNodeValue: node withName: @"folderId"];
			self.helpText = [Soap getNodeValue: node withName: @"helpText"];
			self.hiddenOnCreate = [[Soap getNodeValue: node withName: @"hiddenOnCreate"] boolValue];
			self.label = [Soap getNodeValue: node withName: @"label"];
			self.layoutId = [Soap getNodeValue: node withName: @"layoutId"];
			self.parentChildfieldValueMap = [[SDZSoapNamedValues newWithNode: [Soap getNode: node withName: @"parentChildfieldValueMap"]] object];
			self.parentFieldId = [Soap getNodeValue: node withName: @"parentFieldId"];
			self.pattern = [Soap getNodeValue: node withName: @"pattern"];
			self.required = [[Soap getNodeValue: node withName: @"required"] boolValue];
			self.userFilter = [Soap getNodeValue: node withName: @"userFilter"];
			self.valueType = [Soap getNodeValue: node withName: @"valueType"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"OrderedTrackerFieldSoapRow"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.defaultTextValue != nil) [s appendFormat: @"<defaultTextValue>%@</defaultTextValue>", [[self.defaultTextValue stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.defaultUsernames != nil) [s appendString: [self.defaultUsernames serialize: @"defaultUsernames"]];
		[s appendFormat: @"<disabled>%@</disabled>", (self.disabled)?@"true":@"false"];
		[s appendFormat: @"<displayLines>%@</displayLines>", [NSString stringWithFormat: @"%i", self.displayLines]];
		[s appendFormat: @"<displayOrder>%@</displayOrder>", [NSString stringWithFormat: @"%i", self.displayOrder]];
		[s appendFormat: @"<displaySize>%@</displaySize>", [NSString stringWithFormat: @"%i", self.displaySize]];
		if (self.fieldDisplayType != nil) [s appendFormat: @"<fieldDisplayType>%@</fieldDisplayType>", [[self.fieldDisplayType stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.fieldId != nil) [s appendFormat: @"<fieldId>%@</fieldId>", [[self.fieldId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.fieldName != nil) [s appendFormat: @"<fieldName>%@</fieldName>", [[self.fieldName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.fieldValues != nil) [s appendString: [self.fieldValues serialize: @"fieldValues"]];
		if (self.folderId != nil) [s appendFormat: @"<folderId>%@</folderId>", [[self.folderId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.helpText != nil) [s appendFormat: @"<helpText>%@</helpText>", [[self.helpText stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<hiddenOnCreate>%@</hiddenOnCreate>", (self.hiddenOnCreate)?@"true":@"false"];
		if (self.label != nil) [s appendFormat: @"<label>%@</label>", [[self.label stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.layoutId != nil) [s appendFormat: @"<layoutId>%@</layoutId>", [[self.layoutId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.parentChildfieldValueMap != nil) [s appendString: [self.parentChildfieldValueMap serialize: @"parentChildfieldValueMap"]];
		if (self.parentFieldId != nil) [s appendFormat: @"<parentFieldId>%@</parentFieldId>", [[self.parentFieldId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.pattern != nil) [s appendFormat: @"<pattern>%@</pattern>", [[self.pattern stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<required>%@</required>", (self.required)?@"true":@"false"];
		if (self.userFilter != nil) [s appendFormat: @"<userFilter>%@</userFilter>", [[self.userFilter stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.valueType != nil) [s appendFormat: @"<valueType>%@</valueType>", [[self.valueType stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZOrderedTrackerFieldSoapRow class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.defaultTextValue != nil) { [self.defaultTextValue release]; }
		if(self.defaultUsernames != nil) { [self.defaultUsernames release]; }
		if(self.fieldDisplayType != nil) { [self.fieldDisplayType release]; }
		if(self.fieldId != nil) { [self.fieldId release]; }
		if(self.fieldName != nil) { [self.fieldName release]; }
		if(self.fieldValues != nil) { [self.fieldValues release]; }
		if(self.folderId != nil) { [self.folderId release]; }
		if(self.helpText != nil) { [self.helpText release]; }
		if(self.label != nil) { [self.label release]; }
		if(self.layoutId != nil) { [self.layoutId release]; }
		if(self.parentChildfieldValueMap != nil) { [self.parentChildfieldValueMap release]; }
		if(self.parentFieldId != nil) { [self.parentFieldId release]; }
		if(self.pattern != nil) { [self.pattern release]; }
		if(self.userFilter != nil) { [self.userFilter release]; }
		if(self.valueType != nil) { [self.valueType release]; }
		[super dealloc];
	}

@end
