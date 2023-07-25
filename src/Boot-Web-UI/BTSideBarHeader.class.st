"
Head part of the sidebar
"
Class {
	#name : #BTSideBarHeader,
	#superclass : #BTComponent,
	#category : #'Boot-Web-UI-Components'
}

{ #category : #rendering }
BTSideBarHeader >> renderContentOn: html [

	html html: '
        <div class="offcanvas-header">
          <h5 class="offcanvas-title">Astares</h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>'
]
