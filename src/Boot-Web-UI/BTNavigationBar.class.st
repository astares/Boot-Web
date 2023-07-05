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

	html nav
		class: 'navbar';
		class: 'navbar-light bg-light' if: self isDarkTheme not;
		class: 'navbar-dark bg-dark' if: self isDarkTheme;
		with: [ self renderNavBarContentOn: html ]
]

{ #category : #'private - rendering' }
BTNavigationBar >> renderNavBarContentOn: html [

	html div
		class: 'container-fluid';
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
