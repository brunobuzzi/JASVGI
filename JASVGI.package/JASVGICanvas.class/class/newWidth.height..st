other
newWidth: width height: height
	| configuration |

	configuration := self defaultHeaders 
		add: ('width' -> width); 
		add: ('height' -> height); 
		add: ('viewport-fill' -> 'red'); 
		yourself.
	^super new 
		initialize 
		setCanvasWith: configuration
		yourself