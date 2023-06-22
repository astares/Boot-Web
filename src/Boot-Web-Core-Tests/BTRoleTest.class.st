"
A BTRoleTest is a test class for testing the behavior of BTRole
"
Class {
	#name : #BTRoleTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-Core-Tests-IAM'
}

{ #category : #tests }
BTRoleTest >> testInstanceCreation [

	self assert: (BTRole named: 'admin') name equals: 'admin'
]
