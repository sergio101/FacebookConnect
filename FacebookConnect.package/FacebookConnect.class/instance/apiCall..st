as yet unclassified
apiCall: params
	| url |
	"TODO: Write a handler for the params"
	url := (self apiUrl) , (self apiPath: params), '?access_token=', (self oAuthToken), '&fields=name, id'.
	^ NeoJSONReader fromString: (ZnClient new get: url)