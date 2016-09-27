draw
draw: aJASVGITagFigure in: groupNamed
	"Store <aJASVGITagFigure> to be drawn in a group named <groupNamed>"

	^aJASVGITagFigure drawOnListOf: self in: groupNamed