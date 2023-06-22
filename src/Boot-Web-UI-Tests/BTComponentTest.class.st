"
A BTComponentTest is a test class for testing the behavior of BTComponent
"
Class {
	#name : #BTComponentTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-UI-Tests-Components'
}

{ #category : #tests }
BTComponentTest >> testIsAbstract [

	self assert: BTComponent isAbstract
]
