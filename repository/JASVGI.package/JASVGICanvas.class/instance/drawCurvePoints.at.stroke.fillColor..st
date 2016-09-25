figures
drawCurvePoints: points at: aPoint stroke: stroke fillColor: fillColor

	^self drawCurvePoints: points at: aPoint id: UUID new asString stroke: stroke fillColor: fillColor strokeWidth: '1px'