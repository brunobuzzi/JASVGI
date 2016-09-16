draw
draw: aJASVGITagFigure
	"Store <aJASVGITagFigure> to be drawn"

	"^svgObjects at: aJASVGITagFigure id put: aJASVGITagFigure"

	^aJASVGITagFigure drawOnListOf: self