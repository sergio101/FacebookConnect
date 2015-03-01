api actions
friendlist
	| params |
	params := Dictionary
		newFrom:
			{'method' -> 'GET' .
			'apiMethod' -> self userID .
			'apiEdge' -> 'friendLists'}.
	^ self apiCall: params.