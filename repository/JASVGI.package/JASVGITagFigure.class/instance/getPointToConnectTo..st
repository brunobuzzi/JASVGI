geometry
getPointToConnectTo: aJasvgiTagElement
	"Answer a point of the receiver to connect with the element <aJasvgiTagElement>"

	((self x + self width + 10) < aJasvgiTagElement x) ifTrue: [^self getRightMiddlePoint].

	((self y + self height + 10) < aJasvgiTagElement y) ifTrue: [^self getBottomMiddlePoint].

	((self x) > (aJasvgiTagElement x + aJasvgiTagElement width + 10)) ifTrue: [^self getLeftMiddlePoint].

	((self y) > (aJasvgiTagElement y + aJasvgiTagElement height + 10)) ifTrue: [^self getTopMiddlePoint].

	^(self x + self width//2) @ (self y + self height//2)