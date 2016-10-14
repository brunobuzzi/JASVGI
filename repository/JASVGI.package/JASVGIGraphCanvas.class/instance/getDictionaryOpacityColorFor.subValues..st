other
getDictionaryOpacityColorFor: anglesDictionary subValues: subAnglesDictionary
	""
	| colorsDictionary subColorDictionary opacityDictionary index currentAngle subKeys subValue |

	opacityDictionary := Dictionary new.
	subColorDictionary := Dictionary new.
	currentAngle := 0.
	subValue := 0.
	index := 1.
	colorsDictionary := self getDictionaryColorFor: anglesDictionary.
	subKeys := subAnglesDictionary keys.

	anglesDictionary keysAndValuesDo: [:label :value | | currentCollection opacity |
		currentCollection := OrderedCollection new.
		currentAngle := currentAngle + value.
		opacity := 1.
		[currentAngle > subValue] whileTrue: [
			subValue := subValue + (subAnglesDictionary at: (subKeys at: index)).
			opacity := opacity - 0.1.
			opacityDictionary at: (subKeys at: index) put: opacity.
			subColorDictionary at: (subKeys at: index) put: (colorsDictionary at: label).
			index := index + 1.
		].
	].

	^Array with: colorsDictionary with: subColorDictionary with: opacityDictionary