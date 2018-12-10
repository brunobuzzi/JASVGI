other
newAnchor: aString at: aPoint id: id url: url textSizePx: textSizePx color: color
	| anchorAttributes svgText textAttributes |

	anchorAttributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'xlink:href' value: url);
		add: (JASVGIAttribute parent: self name: 'target' value: '_blank');
		yourself.

	textAttributes := OrderedCollection new 
		add: (JASVGIAttribute parent: self name: 'x' value: aPoint x);
		add: (JASVGIAttribute parent: self name: 'y' value: aPoint y);
		add: (JASVGIAttribute parent: self name: 'font-size' value: textSizePx);
		add: (JASVGIAttribute parent: self name: 'font-family' value: 'Tahoma');
		add: (JASVGIAttribute parent: self name: 'fill' value: color);
		yourself.

	svgText := (JASVGITagText newId: UUID new asString withAll: textAttributes) text: aString.

	^(JASVGITagAnchor newId: id withAll: anchorAttributes) svgText: svgText