other
initialize
	| header |

	super initialize.

	xmlCanvas := XMLWriter new.
	svgObjects := OrderPreservingDictionary new.
	svgMarkers := OrderPreservingDictionary new.

	header := OrderedCollection new 
							add: ('xmlns' -> 'http://www.w3.org/2000/svg');
							add: ('xmlns:xlink' -> 'http://www.w3.org/1999/xlink');
							yourself.

	svgTag := xmlCanvas tag: 'svg' attributes: header.