other
getBottomLine

	^Array 
		with: ((self x + self height) @ self y)
		with: ((self x + self height) @ (self y + self height))