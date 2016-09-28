curves
drawCurve: points at: aPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	"The receiver draw a curve using the collection points <points> with id <id> with width in px <widthPx> stroke color <stroke> and fill color <fillColor>"
	| curve translatedPoints |

	translatedPoints := points collect: [:each | each x @ each y negated].

	curve := self draw: (JASVGITagPath newCurve: translatedPoints id: id widthPx: widthPx stroke: stroke fillColor: fillColor).

	curve transform: ('translate(', aPoint x printString, ',',aPoint y printString, ')').

	^curve