other
newWidth: width height: height
	| configuration |

	configuration := self defaultHeaders 
		add: ('width' -> width); 
		add: ('height' -> height); 
		add: ('style' -> 'background-color: rgb(212, 211, 164);'); 
		yourself.
	^super new 
		initialize 
		setCanvasWith: configuration
		yourself