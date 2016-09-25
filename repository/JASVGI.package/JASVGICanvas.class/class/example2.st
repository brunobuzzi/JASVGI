other
example2
	| canvas points |

	canvas := self newWidth: '1000px' height: '1000px'.
	points := OrderedCollection new 
	add: 0@0; add: 10@10; add: 20@20; add: 30@50;add: 40@80;
	add: 50@78; add:60@52; add: 70@40; add: 60@25; add: 70@10; 
	add: 80@58; add: 90@100; add: 100@30; add: 110@20;
	yourself.

	canvas drawCurveWithCircles: points 
	at: 100@100 stroke: 'black' fillColor: 'black' strokeWidth: '3px'.

	^canvas contents