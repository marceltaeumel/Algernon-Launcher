categorizing
extractFrom: anItemCollection

	| category maxIndex |
	(anItemCollection size = 0) ifTrue: [ ^ self ].
	category := ALGCategory newForTopResults.
	maxIndex := self class maxNumTopResults.
	(anItemCollection size < maxIndex)
		ifTrue: [ maxIndex := anItemCollection size ].
	(1 to: maxIndex) do: [ :i | category add: (anItemCollection at: i) ].
	^ category