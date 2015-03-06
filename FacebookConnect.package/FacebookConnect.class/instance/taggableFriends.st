as yet unclassified
taggableFriends
	| params |
	params := Dictionary
		newFrom:
			{'method' -> 'GET' .
			'apiMethod' -> self userID .
			'apiEdge' -> 'taggable_friends'}.
	^ self apiCall: params.