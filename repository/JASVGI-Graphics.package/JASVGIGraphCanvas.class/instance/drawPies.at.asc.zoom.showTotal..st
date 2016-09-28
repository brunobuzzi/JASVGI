pies
drawPies: collectionPercentage at: aPoint asc: aBoolean zoom: zoom showTotal: showTotal
	| xShift yText prevRadius switch group |

	group := JASVGITagGroup newNamed: 'pies'.
	group transform: 'translate(', aPoint x printString, ',', aPoint y printString,')'.
	yText := aPoint y.
	switch := true.

	showTotal 
	ifTrue: [ | circle text |
		circle := self drawCircleAt: aPoint r: (100 * zoom) stroke: 'black' fillColor: self colorPalette randomPeek.
		text := self drawText: 'Total - 100%' at: aPoint.
		self addFigure: circle toGroup: 'pies'.
		self addFigure: text toGroup: 'pies'.
		prevRadius := (100 * zoom).
		xShift := aPoint x + prevRadius]
	ifFalse: [xShift := aPoint x].

	(aBoolean ifTrue: [collectionPercentage asSortedCollection] ifFalse: [collectionPercentage asSortedCollection reverse])
		do: [:eachValue | | key radius circle text |
			yText := switch ifTrue: [aPoint y + 10] ifFalse: [aPoint y - 10].
			key := collectionPercentage keyAtValue: eachValue.
			radius := eachValue * zoom.
			xShift := xShift + radius + 10.
			circle := self drawCircleAt: (xShift @ aPoint y) r: radius stroke: 'black' fillColor: self colorPalette randomPeek.
			text := self drawText: (key, ' ', eachValue printString, '%') at: ((xShift - radius + 10) @ yText).
			self addFigure: circle toGroup: 'pies'.
			self addFigure: text toGroup: 'pies'.
			prevRadius := radius.
			xShift := xShift + prevRadius + 10.
			switch := switch not.
		].