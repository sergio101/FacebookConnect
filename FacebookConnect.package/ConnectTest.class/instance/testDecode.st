as yet unclassified
testDecode
	| fb |
	fb := FacebookConnect new.
	
   self assert: (fb getAuthData: signedRequest at: 'oauth_token') equals: (self authToken).
	self assert: (fb getAuthData: self postFields at: 'user_id') equals: (self userID). 