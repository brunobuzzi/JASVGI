other
initialize

	super initialize.

	xmlCanvas := XMLWriter new.
	svgObjects := OrderPreservingDictionary new.
	svgMarkers := OrderPreservingDictionary new.