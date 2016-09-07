draw
contents
	
	svgTag with: [
		self tag: 'defs' with: [svgMarkers do: [:each | each drawOn: self]].
		(svgObjects orderedKeys select: [:e | e notNil]) do:[:key | | svgFigureTag figureName |
			svgFigureTag := svgObjects at: key.
			figureName := (key subStrings: '.') first.
			svgFigureTag drawOn: self.
		].
	].

	^xmlCanvas contents