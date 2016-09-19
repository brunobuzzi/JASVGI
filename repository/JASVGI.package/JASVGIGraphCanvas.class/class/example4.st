other
example4
 | dict |

	dict := OrderPreservingDictionary new.
	dict at: 'miem' put: 45;
		at: 'md' put: 20;
		at: 'mef' put: 15;
		at: 'opp' put: 10;
		at: 'msp' put: 5;
		at: 'mt' put: 5.

	^((JASVGIGraphCanvas newWidth: '1000px' height: '1000px') drawPiePercentage: dict at: 10@10 radius: 80) contents