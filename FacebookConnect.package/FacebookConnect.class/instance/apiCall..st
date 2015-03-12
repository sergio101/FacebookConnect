as yet unclassified
apiCall: params
	| url |
	"TODO: Write a handler for the params"
	url := (self apiUrl) , (self apiPath: params), '?access_token=', (self oAuthToken asString), '&fields=name, id'.
	^ NeoJSONReader fromString: (ZnClient new get: url)