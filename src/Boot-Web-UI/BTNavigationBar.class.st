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
		class: 'navbar navbar-dark bg-dark';
		with: [  
	html html: '<div class="container-fluid">
      
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasNavbarDark" aria-labelledby="offcanvasNavbarDarkLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">Offcanvas</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          
          
        </div>
      </div>
    </div>'	].

BTFileLibrary addLoadScriptTo: html
]

{ #category : #'private - rendering' }
BTNavigationBar >> renderTogglerOn: html [

	html button
		class: 'navbar-toggler';
		with: [ html span class: 'navbar-toggler-icon' ]
]
