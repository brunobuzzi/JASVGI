other
getDictionaryColorFor: dictionary
	| colorsDictionary palette random |

	random := Random new.
	colorsDictionary := Dictionary new.
	palette := self colorPalette asOrderedCollection.
	dictionary keys do: [:key | | color |
		color := palette randomPeek: random.
		colorsDictionary at: key put: color.
		palette remove: color ifAbsent: [].
		palette isEmpty ifTrue: [palette := self colorPalette asOrderedCollection]. 
		].

	^colorsDictionary