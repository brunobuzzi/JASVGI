curves
drawCurvePoints: points at: aPoint strokeWidth: strokeWidth stroke: stroke fillColor: fillColor

	^self drawCurvePoints: points at: aPoint id: UUID new asString strokeWidth: '1px' stroke: stroke fillColor: fillColor