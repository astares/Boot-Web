"
A BTUserTest is a test class for testing the behavior of BTUser
"
Class {
	#name : #BTUserTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-Core-Tests-IAM'
}

{ #category : #tests }
BTUserTest >> testInstanceCreation [

	self assert: (BTUser named: 'admin') name equals: 'admin'
]
