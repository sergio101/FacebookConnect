as yet unclassified
postFields: postFields
	| signedRequest jsonData |
	signedRequest := postFields at: 'signed-request'.
	signedRequest := signedRequest  at: 2.
	jsonData := signedRequest base64Decoded .
	^ NeoJSONReader fromString: jsonData .