draw
asSvgAttributes
	| svgAttributes styles |

	svgAttributes := OrderedCollection new.
	styles := PrintStream on: String new.

	attributes do: [:each | 
		each isStyleAttribute
		ifTrue: [styles nextPutAll: (each attributeName, ': ', each getAttributeValue,';')] 
		ifFalse: [svgAttributes add: each asSvgAttribute]].

	svgAttributes 
		add: ('id' -> id);
		add: ('style' -> styles contents).

	^svgAttributes