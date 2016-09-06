figures
drawRoundRectangleAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke
	| attributes svgFigureTag |

	attributes := OrderedCollection new 
		add: (JASVGIAttribute name: 'x' value: aPoint x);
		add: (JASVGIAttribute name: 'y' value: aPoint y);
		add: (JASVGIAttribute name: 'rx' value: 10);
		add: (JASVGIAttribute name: 'ry' value: 10);
		add: (JASVGIAttribute name: 'fill' value: fillColor);
		add: (JASVGIAttribute name: 'height' value: height);
		add: (JASVGIAttribute name: 'width' value: width);
		add: (JASVGIAttribute name: 'stroke' value: stroke);
		yourself.

	svgFigureTag := JASVGITagRectangle id: id withAll: attributes.

	^self draw: svgFigureTag