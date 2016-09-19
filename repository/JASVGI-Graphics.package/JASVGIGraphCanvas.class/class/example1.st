other
example1
 | dict |

	dict := Dictionary new.
	dict at: 'rusia' put: 60;
		at: 'usa' put: 30;
		at: 'china' put: 28;
		at: 'india' put: 25.

	^((JASVGIGraphCanvas newWidth: '1000px' height: '1000px') drawVerticalBarGraph: dict at: 10@200 maxHeight: 180 width: 30)
		contents