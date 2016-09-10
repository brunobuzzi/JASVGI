geometry
getRightLine

	^Array 
		with: ((self x + self width) @ (self y))
		with: ((self x + self width) @ (self y + self height))