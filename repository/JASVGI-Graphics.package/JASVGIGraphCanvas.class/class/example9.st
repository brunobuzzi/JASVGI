other
example9
 | dict splitDict |

	splitDict := Dictionary new.
	dict := Dictionary new.
	dict at: 'rusia' put: 60;
		at: 'usa' put: 50;
		at: 'uruguay' put: 44;
		at: 'china' put: 28;
		at: 'india' put: 25.

	splitDict at: 'rusia' put: (Dictionary new at: 'moscow' put: 30; at: 'st pertersburg' put: 20; at: 'vladigostok' put: 10;yourself);
		at: 'usa' put: (Dictionary new at: 'new york' put: 20; at: 'oregon' put: 14; at: 'orlando' put: 10; at: 'los angeles' put: 6; yourself);
		at: 'china' put: (Dictionary new at: 'pekin' put: 24; at: 'hong kong' put: 4; yourself);
		at: 'uruguay' put: (Dictionary new at: 'montevideo' put: 23; at: 'las piedras' put: 21; yourself);
		at: 'india' put: (Dictionary new at: 'new delhi' put: 15; at: 'bombay' put: 8; at: 'mumba' put: 2 ;yourself).

	^((self newWidth: '1000px' height: '1000px') 
			drawInnerSplit: splitDict 
			horizontalBarGraph: dict 
			at: 15@15 
			maxWidth: 500 
			width: 20
			transform: 'translate(20,20),scale(1.4,1.4)') 
		contents