other
example16
	| dict canvas sd |

	canvas := JASVGIGraphCanvas newWidth: '1000px' height: '1000px' backcolor: 'lightgray'.
	dict := OrderPreservingDictionary new.
	dict at: 'miem' put: 80;
		at: 'mef' put: 70;
		at: 'opp' put: 100;
		at: 'msp' put: 50;
		at: 'mt' put: 60.	
	sd := OrderPreservingDictionary new.
	sd at: 'miem-1' put: 40; at: 'miem-2' put: 40; at: 'mef-1' put: 30; at: 'mef-2' put: 30; 
at: 'mef-3' put: 10; at: 'opp-1' put: 40; at: 'opp-2' put: 15; at: 'opp-3' put: 15; at: 'opp-4' put: 10; 
at: 'opp-5' put: 10; at: 'opp-6' put: 10; at: 'msp-1' put: 30;at: 'msp-2' put: 20; at: 'mt-1' put: 20; 
at: 'mt-2' put: 30; at: 'mt-3' put: 10.

	canvas
		drawDoubleDonutAngles: dict 
		subAngles: sd 
		at: 10@10
		radius: 100 
		subRadiusRatio: 1.4
		showSub: true
		backcolor: 'lightgray' 
		transform: 'translate(200,200)'.

	^canvas contents