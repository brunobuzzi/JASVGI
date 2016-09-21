other
newWidth: width height: height backcolor: backcolor
	| configuration |

	configuration := self defaultHeaders 
		add: ('width' -> width); 
		add: ('height' -> height); 
		add: ('style' -> ('background-color: ', backcolor,';')); 
		yourself.

	^super new 
		initialize 
		setCanvasWith: configuration
		yourself