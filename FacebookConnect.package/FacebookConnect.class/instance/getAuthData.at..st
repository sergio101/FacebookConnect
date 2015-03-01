as yet unclassified
getAuthData: postFields at: aString
	| signedRequest jsonData |
	signedRequest := (postFields splitOn: '.') at: 2.
	jsonData := signedRequest base64Decoded .
	signedRequest := (NeoJSONReader fromString: jsonData).
	^ signedRequest at: aString
	