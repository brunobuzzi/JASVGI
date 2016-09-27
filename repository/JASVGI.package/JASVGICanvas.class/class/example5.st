other
example5
	| canvas points |

	canvas := self newWidth: '1000px' height: '1000px'.
	points := OrderedCollection new 
	add: 0@0; add: 20@10; add: 40@20; add: 60@50;add: 80@80;
	add: 100@78; add:120@52; add: 140@40; add: 160@25; add: 180@90; 
	add: 200@58; add: 220@100; add: 240@30; add: 260@20;
	yourself.

	canvas drawHorizontalCurveWithCircles: points stroke: 'black' fillColor: 'black' strokeWidth: '3px'.

	^canvas contents