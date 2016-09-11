other
addFigure: aJasvgiTagFigure toGroup: groupNamed

	svgGroups 
		at: groupNamed 
		ifPresent: [:jasvgiTagGroup | jasvgiTagGroup addFigure: aJasvgiTagFigure]
		ifAbsent: [svgGroups at: groupNamed put: (JASVGITagGroup newNamed: groupNamed with: aJasvgiTagFigure) ].

	svgFigures removeKey: aJasvgiTagFigure id ifAbsent: []. "if the figure is in a group --> is not in the general canvas <svgObjects>"
	svgLines removeKey: aJasvgiTagFigure id ifAbsent: []. 	"if the figure is in a group --> is not in the general canvas <svgObjects>"

	^aJasvgiTagFigure