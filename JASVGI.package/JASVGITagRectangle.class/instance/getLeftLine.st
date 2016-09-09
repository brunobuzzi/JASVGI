other
getLeftLine

	^Array 
		with: self position
		with: ((self x) @ (self y + self height))