"
A content page
"
Class {
	#name : #BTWorkbench,
	#superclass : #BTComponent,
	#instVars : [
		'navigationBar',
		'sidebar'
	],
	#category : #'Boot-Web-UI-Base'
}

{ #category : #hooks }
BTWorkbench >> children [

	^ Array with: navigationBar with: sidebar
]

{ #category : #initialization }
BTWorkbench >> initialize [

	super initialize.
	sidebar := BTSideBar new.
	navigationBar := BTNavigationBar new.
]

{ #category : #rendering }
BTWorkbench >> renderContentOn: html [

	html div 
		class: 'page-wrapper';
		with:  [ 
			html 
				render: sidebar;
				render: navigationBar ].
			
	BTFileLibrary addLoadScriptTo: html	
]
