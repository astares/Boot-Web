"
A sidebar menu
"
Class {
	#name : #BTSideBar,
	#superclass : #BTComponent,
	#category : #'Boot-Web-UI-Components'
}

{ #category : #rendering }
BTSideBar >> renderContentOn: html [
	html aside
		class: 'offcanvas offcanvas-start';
		class: 'text-bg-dark' if: self isDarkTheme;
		class: 'text-bg-light' if: self isDarkTheme not;
		tabIndex: -1;
		id: 'offcanvasNavbarDark';
		attributeAt: 'aria-labelledby' put: 'offcanvasNavbarDarkLabel';
  		with: [ 
			self 
				renderSideBarHeaderOn: html;
				renderSideBarContentOn: html
	]
]

{ #category : #rendering }
BTSideBar >> renderSideBarContentOn: html [

	html html: ' 
        <div class="offcanvas-body">
          
          
        </div>
      '
]

{ #category : #rendering }
BTSideBar >> renderSideBarHeaderOn: html [

	html html: ' 

 
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">Menu</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        
      
      '
]
