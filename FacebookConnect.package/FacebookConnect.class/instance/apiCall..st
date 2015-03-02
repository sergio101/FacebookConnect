as yet unclassified
apiCall: params
	| url |
	url := (self apiUrl) , (self apiPath: params), '?access_token=', (self oAuthToken).
	^ ZnClient new get: url