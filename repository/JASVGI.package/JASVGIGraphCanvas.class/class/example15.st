other
example15
 | dict canvas workingDays |

	canvas := JASVGIGraphCanvas newWidth: '1000px' height: '1000px' backcolor: 'lightgray'.
	dict := OrderPreservingDictionary new.
	workingDays := Dictionary new.
	workingDays at: 1 put: 20; at: 2 put: 15; at: 3 put: 8; at: 4 put: 30; at: 5 put: 22; at: 6 put: 15; at: 7 put: 30; at: 8 put: 4; at: 9 put: 19; at: 10 put: 8; at: 11 put: 14; 
at: 12 put: 1; at: 13 put: 4; at: 14 put: 28; at: 15 put: 22; at: 21 put: 15; at: 23 put: 17; at: 25 put: 22; at: 28 put: 8; at: 29 put: 9; at: 30 put: 17.

 	canvas drawVerticalDaysAt: 30@30 
				from: (Date fromString: '09/01/2016')
				to: (Date fromString: '09/30/2016')
				workingDays: workingDays
				width: 20 
				color: 'green'.

	^canvas contents