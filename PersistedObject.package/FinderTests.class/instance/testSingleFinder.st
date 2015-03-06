as yet unclassified
testSingleFinder
	self assert: (User Database size) == (userCount).
	self assert: (User findBy: #userId withValue: 123) isNotNil.
	User Database remove: user.
	self assert: (User findBy: #userId withValue: 123) isNil.