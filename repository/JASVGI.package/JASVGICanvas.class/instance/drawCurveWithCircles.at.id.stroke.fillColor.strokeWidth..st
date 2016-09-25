figures
drawCurveWithCircles: points at: aPoint id: id stroke: stroke fillColor: fillColor strokeWidth: strokeWidth
	|  translatedPoints |

	translatedPoints := points collect: [:each | each x @ each y negated].

	translatedPoints do: [:each | | point line |
		point := self drawCircleAt: each r: 2 fillColor: fillColor stroke: stroke strokeWidth: strokeWidth.
		line := self drawLineFrom: (each x @ 0) to: each.
		point transform: ('translate(', aPoint x printString, ',',aPoint y printString, ')').
		line transform: ('translate(', aPoint x printString, ',',aPoint y printString, ')').
	].