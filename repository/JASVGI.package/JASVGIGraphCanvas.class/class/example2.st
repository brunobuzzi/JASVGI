other
example2
 | dict |

	dict := Dictionary new.
	dict at: 'rusia' put: 30;
		at: 'usa' put: 25;
		at: 'china' put: 20;
		at: 'india' put: 20;
		at: 'vietnam' put: 5.

	^((JASVGIGraphCanvas newWidth: '1000px' height: '1000px') drawPiesDesc: dict at: 120@120 zoom: 1) contents