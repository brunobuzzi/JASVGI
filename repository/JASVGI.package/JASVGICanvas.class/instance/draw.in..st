draw
draw: aJASVGITagFigure in: groupNamed
	"Store <aJASVGITagFigure> to be drawn"

	"^svgObjects at: aJASVGITagFigure id put: aJASVGITagFigure"

	^aJASVGITagFigure drawOnListOf: self in: groupNamed