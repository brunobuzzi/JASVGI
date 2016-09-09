other
newWidth: width height: height

	^super new 
		initialize 
		setCanvasWith: (self defaultHeaders add: ('width' -> width); add: ('height' -> height); yourself);
		yourself