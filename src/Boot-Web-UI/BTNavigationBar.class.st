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

	html header
		class: 'navbar navbar-expand-md d-print-none';
		with: [ self renderNavBarContentOn: html ]
]

{ #category : #'private - rendering' }
BTNavigationBar >> renderNavBarContentOn: html [

	html div
		class: 'container-xl';
		with: [ self renderTogglerOn: html ]
]

{ #category : #'private - rendering' }
BTNavigationBar >> renderTogglerOn: html [

	html button
		class: 'navbar-toggler';
		attributeAt: 'data-bs-toggle' put: 'offcanvas';
		attributeAt: 'data-bs-target' put: '#offcanvasNavbarDark';
		attributeAt: 'aria-controls' put: 'offcanvasNavbarDark';
		attributeAt: 'aria-label' put: 'Toggle navigation';
		with: [ html span class: 'navbar-toggler-icon' ]
]

{ #category : #hooks }
BTNavigationBar >> style [
	"Override the container-xxl styles to use full width"

	^ '.container-xl {
  max-width: 100%;
}'
]
