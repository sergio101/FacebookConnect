as yet unclassified
testDecode
	| fb |
	fb := FacebookConnect new.
	
   self assert: (fb getAuthData: signedRequest forKey: 'oauth_token') equals: (self authToken).
	self assert: (fb getAuthData: self postFields forKey: 'user_id') equals: (self userID). 