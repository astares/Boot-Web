"
A root component
"
Class {
	#name : #BTRootComponent,
	#superclass : #WAComponent,
	#category : #'Boot-Web-UI-Base'
}

{ #category : #testing }
BTRootComponent class >> canBeRoot [

	^ true
]

{ #category : #'accessing - defaults' }
BTRootComponent class >> contextRoot [
	"Return a string to be used as context root"

	^ self subclassResponsibility
]

{ #category : #'accessing - defaults' }
BTRootComponent class >> customSessionClass [
	"nil by default - subclasses might want to override to return a custom session class"

	^ nil
]

{ #category : #testing }
BTRootComponent class >> isAbstract [

	^ self == BTRootComponent
]

{ #category : #registration }
BTRootComponent class >> register [

	| app |
	app := self registerContext.
	self registerOnApp: app
]

{ #category : #registration }
BTRootComponent class >> registerAsRoot [

	WAAdmin defaultDispatcher defaultName:
		(WAAdmin defaultDispatcher handlerAt: self contextRoot) name
	
	
]

{ #category : #registration }
BTRootComponent class >> registerContext [
	"Register the context as a Seaside application"

	^ WAAdmin register: self asApplicationAt: self contextRoot
]

{ #category : #registration }
BTRootComponent class >> registerOnApp: app [

	app
		addLibrary: BTFileLibrary
]

{ #category : #accessing }
BTRootComponent >> title [

	^'Astares Web'
]

{ #category : #updating }
BTRootComponent >> updateRoot: html [

	html meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0"'.
	html title: self title.	
	html beHtml5 	
]
