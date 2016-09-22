other
example10
 | dict splitDict |

	splitDict := OrderPreservingDictionary new.
	dict := OrderPreservingDictionary new.
	dict at: 'rusia' put: 60;
		at: 'usa' put: 50;
		at: 'china' put: 28;
		at: 'uruguay' put: 44;
		at: 'india' put: 25.

	splitDict at: 'rusia' put: (OrderPreservingDictionary new at: 'moscow' put: 30; at: 'st pertersburg' put: 20; at: 'vladigostok' put: 10;yourself);
		at: 'usa' put: (OrderPreservingDictionary new at: 'new york' put: 20; at: 'los angeles' put: 6; at: 'oregon' put: 14; at: 'orlando' put: 10; yourself);
		at: 'china' put: (OrderPreservingDictionary new at: 'pekin' put: 24; at: 'hong kong' put: 4; yourself);
		at: 'uruguay' put: (OrderPreservingDictionary new at: 'montevideo' put: 20; at: 'las piedras' put: 24; yourself);
		at: 'india' put: (OrderPreservingDictionary new at: 'new delhi' put: 15; at: 'bombay' put: 8; at: 'mumba' put: 2 ;yourself).

	^((self newWidth: '1000px' height: '1000px') 
			drawJoin: splitDict 
			verticalBarGraph: dict 
			at: 15@15 
			maxHeight: 200 
			width: 20 
			transform: 'translate(50,400),scale(1.5,1.5)') 
		contents