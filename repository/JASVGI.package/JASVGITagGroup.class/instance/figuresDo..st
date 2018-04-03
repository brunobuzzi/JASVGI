other
figuresDo: aBlock
	"The receiver render the Rectangles (BpmTasks) last in order to put rectangles (tasks) in the last Z order.
	All figure that is not a rectangle (task) is going to be in the top of any rectangle "
	| figuresInRenderOrder allFigures |

	allFigures := svgFigures asOrderedCollection.
	"rectangle representing Bpm Tasks are render first -the next figures will be render on the these tasks-"
	figuresInRenderOrder := OrderedCollection withAll: (allFigures select: [:each | each isRectangle]).

	figuresInRenderOrder addAll: (allFigures reject: [:each | each isRectangle or:[each isDecoration]]).

	figuresInRenderOrder addAll: (allFigures select: [:each | each isDecoration]).

	^figuresInRenderOrder do: aBlock