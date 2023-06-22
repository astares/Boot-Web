"
A BTSessionTest is a test class for testing the behavior of BTSession
"
Class {
	#name : #BTSessionTest,
	#superclass : #TestCase,
	#instVars : [
		'session'
	],
	#category : #'Boot-Web-Core-Tests-Session'
}

{ #category : #utilities }
BTSessionTest >> loginToSession [

	session login: (BTUser named: 'admin')
]

{ #category : #utilities }
BTSessionTest >> logoutFromSession [

	session logout
]

{ #category : #running }
BTSessionTest >> setUp [

	super setUp.
	session := BTSession new
]

{ #category : #running }
BTSessionTest >> tearDown [ 

	super tearDown.
	self logoutFromSession
]

{ #category : #tests }
BTSessionTest >> testInstanceCreation [

	self deny: BTSession new isLoggedIn
]

{ #category : #tests }
BTSessionTest >> testLogin [

	self deny: session isLoggedIn.
	self loginToSession.

	self assert: session isLoggedIn
]

{ #category : #tests }
BTSessionTest >> testLoginLogout [

	self deny: session isLoggedIn.

	self loginToSession.

	self assert: session isLoggedIn.

	self logoutFromSession.

	self deny: session isLoggedIn
]
