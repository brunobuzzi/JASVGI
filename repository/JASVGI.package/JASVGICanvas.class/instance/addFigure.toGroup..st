other
addFigure: aJasvgiTagFigure toGroup: groupNamed
	"The receiver the figure <aJasvgiTagFigure> to the group named <groupNamed>.
	Groups <JASVGITagGroup> are used to group figures to apply the same transformation on all of them."

	svgGroups 
		at: groupNamed 
		ifPresent: [:jasvgiTagGroup | jasvgiTagGroup addFigure: aJasvgiTagFigure]
		ifAbsent: [svgGroups at: groupNamed put: (JASVGITagGroup newNamed: groupNamed with: aJasvgiTagFigure) ].

	svgFigures removeKey: aJasvgiTagFigure id ifAbsent: []. "if the figure is in a group --> is not in the general canvas <svgObjects>"
	svgLines removeKey: aJasvgiTagFigure id ifAbsent: []. 	"if the figure is in a group --> is not in the general canvas <svgObjects>"

	^aJasvgiTagFigure