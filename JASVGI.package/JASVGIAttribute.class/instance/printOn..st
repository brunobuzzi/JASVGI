other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: ('(', attributeName, ' > ', self getAttributeValue,')')