curves
drawCurvePoints: points at: aPoint id: id stroke: stroke fillColor: fillColor strokeWidth: strokeWidth
	|  translatedPoints |

	translatedPoints := points collect: [:each | each x @ each y negated].

	translatedPoints do: [:each | | point |
		point := self drawCircleAt: each r: 2 fillColor: fillColor stroke: stroke strokeWidth: strokeWidth.
		point transform: ('translate(', aPoint x printString, ',',aPoint y printString, ')').
	].