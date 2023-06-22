"
A custom session
"
Class {
	#name : #BTSession,
	#superclass : #WASession,
	#instVars : [
		'announcer',
		'user'
	],
	#category : #'Boot-Web-Core-Session'
}

{ #category : #accessing }
BTSession >> announcer [

	^ announcer ifNil: [ announcer := Announcer new ]
]

{ #category : #testing }
BTSession >> isLoggedIn [

	^ user notNil
]

{ #category : #authentication }
BTSession >> login: aUser [

	user := aUser
]

{ #category : #authentication }
BTSession >> logout [

	user := nil
]
