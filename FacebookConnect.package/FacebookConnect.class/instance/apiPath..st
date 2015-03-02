as yet unclassified
apiPath: params
	| path |
	path:=  '/', (params at: 'apiMethod'), '/', (params at: 'apiEdge').
	^path