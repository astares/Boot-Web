"
A BTGroupTest is a test class for testing the behavior of BTGroup
"
Class {
	#name : #BTGroupTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-Core-Tests-IAM'
}

{ #category : #tests }
BTGroupTest >> testInstanceCreation [

	self assert: (BTGroup named: 'Administrators') name equals: 'Administrators'
]
