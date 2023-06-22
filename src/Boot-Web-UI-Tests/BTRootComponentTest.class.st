"
A BTRootComponentTest is a test class for testing the behavior of BTRootComponent
"
Class {
	#name : #BTRootComponentTest,
	#superclass : #TestCase,
	#category : #'Boot-Web-UI-Tests-Base'
}

{ #category : #tests }
BTRootComponentTest >> testIsAbstract [

	self assert: BTRootComponent isAbstract
]

{ #category : #tests }
BTRootComponentTest >> testSelfAndAllSubclassesAreRoot [

	self assert: (BTRootComponent subclasses allSatisfy: [:each | each canBeRoot ])
]
