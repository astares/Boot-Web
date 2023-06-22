"
A navigation bar
"
Class {
	#name : #BTNavigationBar,
	#superclass : #BTComponent,
	#category : #'Boot-Web-UI-Components'
}

{ #category : #rendering }
BTNavigationBar >> renderContentOn: html [

	html div
		class: 'navbar navbar-expand-lg navbar-dark bg-dark';
		with: [ self renderTogglerOn: html ]
]

{ #category : #'private - rendering' }
BTNavigationBar >> renderTogglerOn: html [

	html button
		class: 'navbar-toggler';
		with: [ html span class: 'navbar-toggler-icon' ]
]
