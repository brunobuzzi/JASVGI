other
getTopLine

	^Array 
		with: self position 
		with: ((self x + self width) @ self y)