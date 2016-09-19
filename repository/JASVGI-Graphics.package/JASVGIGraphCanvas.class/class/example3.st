other
example3
 | dict |

	dict := Dictionary new.
	dict at: 'miem' put: 80;
		at: 'md' put: 70;
		at: 'mef' put: 50;
		at: 'opp' put: 50;
		at: 'msp' put: 50;
		at: 'mt' put: 60.	

	^((JASVGIGraphCanvas newWidth: '1000px' height: '1000px') drawPieAngles: dict at: 10@10 radius: 80) contents