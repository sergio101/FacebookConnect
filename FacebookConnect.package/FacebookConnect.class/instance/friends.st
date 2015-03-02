as yet unclassified
friends
	| params |
	params := Dictionary
		newFrom:
			{'method' -> 'GET' .
			'apiMethod' -> self userID .
			'apiEdge' -> 'friends'}.
	^ self apiCall: params.