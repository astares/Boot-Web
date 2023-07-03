"
Home component
"
Class {
	#name : #BTHome,
	#superclass : #BTRootComponent,
	#instVars : [
		'content'
	],
	#category : #'Boot-Web-UI-Base'
}

{ #category : #'accessing - defaults' }
BTHome class >> contextRoot [
	"Return a string to be used as context root"

	^ 'home'
]

{ #category : #'accessing - defaults' }
BTHome class >> customSessionClass [
	"nil by default - subclasses might want to override to return a custom session class"

	^ BTSession
]

{ #category : #'class initialization' }
BTHome class >> initialize [

	self register
]

{ #category : #registration }
BTHome class >> register [

	super register.
	self registerAsRoot
]

{ #category : #registration }
BTHome class >> registerOnApp: app [

	super registerOnApp: app.
	app sessionClass: BTSession.
	app preferenceAt: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new.
]

{ #category : #hooks }
BTHome >> children [

	^ Array with: content
]

{ #category : #initialization }
BTHome >> initialize [

	super initialize.
	content := BTContentPage new
]
