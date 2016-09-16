other
initialize

	super initialize.

	xmlCanvas := XMLWriter new.
	svgObjects := OrderPreservingDictionary new.
	svgMarkers := OrderPreservingDictionary new.
	svgLines := OrderPreservingDictionary new.
	svgFigures := OrderPreservingDictionary new.
	svgGroups := OrderPreservingDictionary new.