other
getPointToConnectTo: aJasvgiTagElement

	((self x + self width + 20) < aJasvgiTagElement x) ifTrue: [^self getRightMiddlePoint].

	((self y + self height + 20) < aJasvgiTagElement y) ifTrue: [^self getBottomMiddlePoint].

	((self x) > (aJasvgiTagElement x + aJasvgiTagElement width + 20)) ifTrue: [^self getLeftMiddlePoint].

	((self y) > (aJasvgiTagElement y + aJasvgiTagElement height + 20)) ifTrue: [^self getTopMiddlePoint].

	^(self x + self width//2) @ (self y + self height//2)