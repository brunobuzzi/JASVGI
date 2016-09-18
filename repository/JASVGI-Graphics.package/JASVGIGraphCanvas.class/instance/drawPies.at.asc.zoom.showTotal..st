other
drawPies: collectionPercentage at: aPoint asc: aBoolean zoom: zoom showTotal: showTotal
	| xShift yText prevRadius switch |

	yText := aPoint y.
	switch := true.

	showTotal 
	ifTrue: [
		self drawCircleAt: aPoint r: (100 * zoom) fillColor: self colorPalette randomPeek stroke: 'black'.
		self drawText: 'Total - 100%' at: aPoint.
		prevRadius := (100 * zoom).
		xShift := aPoint x + prevRadius]
	ifFalse: [xShift := aPoint x].

	(aBoolean ifTrue: [collectionPercentage asSortedCollection] ifFalse: [collectionPercentage asSortedCollection reverse])
		do: [:eachValue | | key radius |
			yText := switch ifTrue: [aPoint y + 10] ifFalse: [aPoint y - 10].
			key := collectionPercentage keyAtValue: eachValue.
			radius := eachValue * zoom.
			xShift := xShift + radius + 10.
			self drawCircleAt: (xShift @ aPoint y) r: radius fillColor: self colorPalette randomPeek stroke: 'black'.
			self drawText: (key, ' ', eachValue printString, '%') at: ((xShift - radius + 10) @ yText).
			prevRadius := radius.
			xShift := xShift + prevRadius + 10.
			switch := switch not.
		].