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
		width: 60
		backcolor: 'white'
		transform: 'translate(100,100)'.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		width: 50
		backcolor: 'white'
		transform: 'translate(400,100)'.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		width: 40
		backcolor: 'white'
		transform: 'translate(100,300)'.

	canvas
		drawDonutAngles: dict 
		at: 10@10 
		radius: 80
		width: 30
		backcolor: 'white'
		transform: 'translate(400,300)'.

	^canvas contents