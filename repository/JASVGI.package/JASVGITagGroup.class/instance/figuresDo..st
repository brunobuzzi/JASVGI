other
figuresDo: aBlock
	"The receiver render the Rectangles (BpmTasks) last in order to put rectangles (tasks) in the last Z order.
	All figure that is not a rectangle (task) is going to be in the top of any rectangle "

	^((svgFigures asOrderedCollection select: [:each | each isRectangle]), (svgFigures asOrderedCollection reject: [:each | each isRectangle])) do: aBlock

"	^svgFigures do: aBlock"