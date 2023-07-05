"
A custom session
"
Class {
	#name : #BTSession,
	#superclass : #WASession,
	#instVars : [
		'announcer',
		'userInfo'
	],
	#category : #'Boot-Web-Core-Session'
}

{ #category : #accessing }
BTSession >> announcer [

	^ announcer ifNil: [ announcer := Announcer new ]
]

{ #category : #testing }
BTSession >> isLoggedIn [

	^ userInfo notNil
]

{ #category : #authentication }
BTSession >> login: aUser [

	userInfo := aUser
]

{ #category : #authentication }
BTSession >> logout [

	userInfo := nil
]

{ #category : #accessing }
BTSession >> userInfo [

	^ userInfo
]
