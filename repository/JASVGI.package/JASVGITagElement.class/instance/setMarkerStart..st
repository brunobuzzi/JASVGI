other
setMarkerStart: markerId

	self add: (JASVGIAttribute 
						parent: self 
						name: 'marker-start' 
						value: 'url(#', markerId, ')'
				)