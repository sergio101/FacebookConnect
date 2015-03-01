as yet unclassified
testApiEndpoints
	| fb path |
	fb := FacebookConnect new.
	path := fb apiPath: params.
	self assert: (path) equals: ('/', self userID, '/', (params at: 'apiEdge')).