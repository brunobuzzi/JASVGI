other
example13
 | dict canvas |

	canvas := JASVGIGraphCanvas newWidth: '1000px' height: '1000px' backcolor: 'lightgray'.
	dict := OrderPreservingDictionary new.
	dict at: 'miem' put: 80;
		at: 'md' put: 70;
		at: 'mef' put: 50;
		at: 'opp' put: 50;
		at: 'msp' put: 50;
		at: 'mt' put: 60.	
	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		transform: 'translate(100,100)'
		backcolor: 'white'
		width: 60.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		transform: 'translate(400,100)'
		backcolor: 'white'
		width: 50.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		transform: 'translate(100,300)'
		backcolor: 'white'
		width: 40.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		transform: 'translate(400,300)'
		backcolor: 'white'
		width: 30.

	^canvas contents