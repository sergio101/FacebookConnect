as yet unclassified
getAuthData: postFields at: aString
"current items of interest: oauth_token, user_id"
	| signedRequest jsonData |
	signedRequest := ((postFields at: 'signed_request') splitOn: '.') at: 2.
	jsonData := signedRequest base64Decoded .
	signedRequest := (NeoJSONReader fromString: jsonData).
	^ signedRequest at: aString
	