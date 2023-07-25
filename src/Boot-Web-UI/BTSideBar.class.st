"
A sidebar menu
"
Class {
	#name : #BTSideBar,
	#superclass : #BTComponent,
	#instVars : [
		'header'
	],
	#category : #'Boot-Web-UI-Components'
}

{ #category : #initialization }
BTSideBar >> initialize [

	super initialize.
	header := BTSideBarHeader new.
]

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

	html div 
		class:  'offcanvas-body';
		with: [ self renderSideBarMenuOn: html ]
]

{ #category : #rendering }
BTSideBar >> renderSideBarHeaderOn: html [

	header renderOn: html
]

{ #category : #rendering }
BTSideBar >> renderSideBarMenuOn: html [

	html html: ' 
    
          
<ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="./">
                    <span class="nav-link-icon d-md-none d-lg-inline-block">
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 12l-2 0l9 -9l9 9l-2 0"></path><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7"></path><path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6"></path></svg>
                    </span>
                    <span class="nav-link-title">
                      Home
                    </span>
                  </a>
                </li>
                 
              </ul>


          
      
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
