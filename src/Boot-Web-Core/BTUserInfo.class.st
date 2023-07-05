"
Information about a user
"
Class {
	#name : #BTUserInfo,
	#superclass : #Object,
	#instVars : [
		'user',
		'theme'
	],
	#category : #'Boot-Web-Core-Session'
}

{ #category : #'instance creation' }
BTUserInfo class >> forUser: aUser [

	^ (self new)
		  user: aUser;
		  yourself
]

{ #category : #initialization }
BTUserInfo >> initialize [
	super initialize.
	self setLightTheme
]

{ #category : #testing }
BTUserInfo >> isLightThemeSet [

	^ theme = #light
]

{ #category : #operating }
BTUserInfo >> setDarkTheme [
	self theme: #dark
]

{ #category : #operating }
BTUserInfo >> setLightTheme [
	self theme: #light
]

{ #category : #'instance creation' }
BTUserInfo >> theme: aString [ 
	theme := aString
]

{ #category : #accessing }
BTUserInfo >> user: aUser [ 
	user := aUser
]
