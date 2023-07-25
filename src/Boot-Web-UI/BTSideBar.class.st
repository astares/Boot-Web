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
		tabIndex: -1;
		id: 'offcanvasNavbarDark';		 
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
          <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">Astares</h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        
      
      '
]

{ #category : #hooks }
BTSideBar >> style [
 	"Overwrite to be always on also for large screens"
	
	^ '	 
  .navbar-expand-md .navbar-toggler {
    display: block !important; /* Override the display: none property */
  }'
]
