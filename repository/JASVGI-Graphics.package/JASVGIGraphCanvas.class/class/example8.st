other
example8
  | dict canvas |

	canvas := JASVGIGraphCanvas newWidth: '1000px' height: '1000px'.
	dict := OrderPreservingDictionary new.
	dict at: 'miem' put: 30;
		at: 'md' put: 20;
		at: 'mef' put: 15;
		at: 'opp' put: 10;
		at: 'msp' put: 5;
		at: 'mvotma' put: 8;
		at: 'mi' put: 7;
		at: 'mt' put: 5.

	canvas drawPiePercentage: dict at: 10@10 radius: 70 transform: 'translate(100,100)'.
	canvas drawPiePercentage: dict at: 10@10 radius: 70 transform: 'translate(450,100)'.
	canvas drawHorizontalBarGraph: dict at: 10@10 maxWidth: 180 width: 15 transform: 'translate(100,250)'.
	canvas drawVerticalBarGraph: dict at: 10@10 maxHeight: 180 width: 15 transform: 'translate(450,450)'.

	^canvas contents