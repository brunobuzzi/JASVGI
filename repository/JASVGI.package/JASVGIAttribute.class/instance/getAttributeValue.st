other
getAttributeValue

	(attributeValue isOctetString) ifFalse: [^attributeValue printString].

	^attributeValue