curves
drawCurvePoints: points at: aPoint stroke: stroke fillColor: fillColor

	^self drawCurvePoints: points at: aPoint id: UUID new asString strokeWidth: '1px' stroke: stroke fillColor: fillColor