other
setMarker: markerId

	self add: (JASVGIAttribute 
						parent: self 
						name: 'marker' 
						value: 'url(#', markerId, ')'
				)