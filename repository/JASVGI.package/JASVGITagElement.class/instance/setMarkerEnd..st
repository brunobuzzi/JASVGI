other
setMarkerEnd: markerId

	self add: (JASVGIAttribute 
						parent: self 
						name: 'marker-end' 
						value: 'url(#', markerId, ')'
				)