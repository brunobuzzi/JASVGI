other
newWidth: width height: height backcolor: backcolor overflowX: overflowX overflowY: overflowY
	| configuration style |

	style := 'background-color: ', backcolor,';'.
	overflowX ifTrue: [style := style, ' overflow-x: auto;'].
	overflowY ifTrue: [style := style, ' overflow-y: auto;']. 
	
	configuration := self defaultHeaders 
		add: ('width' -> width); 
		add: ('height' -> height); 
		add: ('style' -> style); 
		yourself.

	^super new 
		initialize 
		setCanvasWith: configuration
		yourself