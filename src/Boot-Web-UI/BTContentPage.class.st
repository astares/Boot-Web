"
A content page
"
Class {
	#name : #BTContentPage,
	#superclass : #BTComponent,
	#instVars : [
		'navigationBar'
	],
	#category : #'Boot-Web-UI-Base'
}

{ #category : #hooks }
BTContentPage >> children [

	^ Array with: navigationBar
]

{ #category : #initialization }
BTContentPage >> initialize [

	super initialize.
	navigationBar := BTNavigationBar new
]

{ #category : #rendering }
BTContentPage >> renderContentOn: html [

	html main: [ html render: navigationBar ]
]
