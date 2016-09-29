other
example14
 | dict canvas workingDays |

	canvas := JASVGIGraphCanvas newWidth: '1000px' height: '1000px' backcolor: 'lightgray'.
	dict := OrderPreservingDictionary new.
	workingDays := Dictionary new.
	workingDays at: 1 put: 20; at: 2 put: 15; at: 3 put: 8; at: 4 put: 30; at: 5 put: 22; at: 6 put: 15; at: 7 put: 30; at: 8 put: 4; at: 9 put: 19; at: 10 put: 8; at: 11 put: 14; 
at: 12 put: 1; at: 13 put: 4; at: 14 put: 28; at: 15 put: 22; at: 28 put: 15; at: 45 put: 17; at: 53 put: 22; at: 60 put: 8; at: 70 put: 9; at: 75 put: 8; at: 83 put: 19; at: 90 put: 17;
at: 103 put: 21; at: 115 put: 12; at: 160 put: 26; at: 175 put: 17.
 	canvas drawVerticalDaysAt: 30@30 
				from: (Date fromString: '09/30/2016')
				to: ((Date fromString: '09/30/2016') addDays: 365) 
				workingDays: workingDays
				width: 10 
				color: 'green'.

	^canvas contents