curves
drawCurvePoints: points at: aPoint id: id strokeWidth: strokeWidth stroke: stroke fillColor: fillColor
	|  translatedPoints |

	translatedPoints := points collect: [:each | each x @ each y negated].

	translatedPoints do: [:each | | point |
		point := self drawCircleAt: each r: 2 strokeWidth: strokeWidth stroke: stroke fillColor: fillColor.
		point transform: ('translate(', aPoint x printString, ',',aPoint y printString, ')').
	].