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
		class: 'navbar offcanvas offcanvas-start';	 	 
		tabIndex: -1;
		id: 'offcanvasNavbarDark';		  
  		with: [  	
			 self renderSideBarOn: html	 		 
	]
]

{ #category : #rendering }
BTSideBar >> renderSideBarContentOn: html [ 

	self renderSideBarMenuOn: html
]

{ #category : #rendering }
BTSideBar >> renderSideBarHeaderOn: html [

	header renderOn: html
]

{ #category : #rendering }
BTSideBar >> renderSideBarMenuOn: html [

	html html: ' 
		<div>
        <div class="container-fluid">
          <div class="navbar-collapse" id="sidebar-menu">
            <ul class="navbar-nav pt-lg-3">
              <li class="nav-item">
                <a class="nav-link" href="./">
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 12l-2 0l9 -9l9 9l-2 0"></path><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7"></path><path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6"></path></svg>
                  </span>
                  <span class="nav-link-title">
                    Home
                  </span>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false">
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 3l8 4.5l0 9l-8 4.5l-8 -4.5l0 -9l8 -4.5"></path><path d="M12 12l8 -4.5"></path><path d="M12 12l0 9"></path><path d="M12 12l-8 -4.5"></path><path d="M16 5.25l-8 4.5"></path></svg>
                  </span>
                  <span class="nav-link-title">
                    Administration
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="./accordion.html">
                        User Management
                      </a>
                      
                      <a class="dropdown-item" href="./inline-player.html">
                        Inline player
                        <span class="badge badge-sm bg-green-lt text-uppercase ms-auto">New</span>
                      </a>
                      <div class="dropend">
                        <a class="dropdown-item dropdown-toggle" href="#sidebar-authentication" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false">
                          Authentication
                        </a>
                        <div class="dropdown-menu">
                          <a href="./sign-in.html" class="dropdown-item">
                            Sign in
                          </a>
                          <a href="./sign-in-link.html" class="dropdown-item">
                            Sign in link
                          </a>
                          <a href="./sign-in-illustration.html" class="dropdown-item">
                            Sign in with illustration
                          </a>
                          <a href="./sign-in-cover.html" class="dropdown-item">
                            Sign in with cover
                          </a>
                          <a href="./sign-up.html" class="dropdown-item">
                            Sign up
                          </a>
                          <a href="./forgot-password.html" class="dropdown-item">
                            Forgot password
                          </a>
                          <a href="./terms-of-service.html" class="dropdown-item">
                            Terms of service
                          </a>
                          <a href="./auth-lock.html" class="dropdown-item">
                            Lock screen
                          </a>
                        </div>
                      </div>
                      <div class="dropend">
                        <a class="dropdown-item dropdown-toggle" href="#sidebar-error" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false">
                          <!-- Download SVG icon from http://tabler-icons.io/i/file-minus -->
                          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-inline me-1" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M14 3v4a1 1 0 0 0 1 1h4"></path><path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z"></path><path d="M9 14l6 0"></path></svg>
                          Error pages
                        </a>
                        <div class="dropdown-menu">
                          <a href="./error-404.html" class="dropdown-item">
                            404 page
                          </a>
                          <a href="./error-500.html" class="dropdown-item">
                            500 page
                          </a>
                          <a href="./error-maintenance.html" class="dropdown-item">
                            Maintenance page
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              
               
               
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle show" href="#navbar-help" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="true">
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/lifebuoy -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0"></path><path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0"></path><path d="M15 15l3.35 3.35"></path><path d="M9 15l-3.35 3.35"></path><path d="M5.65 5.65l3.35 3.35"></path><path d="M18.35 5.65l-3.35 3.35"></path></svg>
                  </span>
                  <span class="nav-link-title">
                    Settings
                  </span>
                </a>
                <div class="dropdown-menu show" data-bs-popper="static">
                  <a class="dropdown-item" href="https://tabler.io/docs" target="_blank" rel="noopener">
                    Documentation
                  </a>
                  <a class="dropdown-item" href="./changelog.html">
                    About
                  </a>
                 
                
                </div>
              </li>
            </ul>
          </div>
        </div>
     <div>
    
         '
]

{ #category : #rendering }
BTSideBar >> renderSideBarOn: html [

	html div
		class: 'navbar-vertical navbar-expand-lg';
		with: [
			self
				renderSideBarHeaderOn: html;
				renderSideBarContentOn: html ]
]

{ #category : #hooks }
BTSideBar >> style [
 	"Overwrite to be always on also for large screens"
	
	^ '	 
  .navbar-expand-md .navbar-toggler {
    display: block !important; /* Override the display: none property */
  }

  .navbar-vertical.navbar-expand-lg {
    width: var(--tblr-offcanvas-width) !important; /* Override the width property to align with offcanvas */
'
]
