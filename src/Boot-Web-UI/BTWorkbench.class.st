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

	^ Array with: navigationBar
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
		class: 'workbench container-fluid px-0';
		with:  [ 
			html 
				render: sidebar;
				render: navigationBar ].
			
	BTFileLibrary addLoadScriptTo: html	
]

{ #category : #rendering }
BTWorkbench >> style [ 

	^'
	.workbench { 
		background-color: #ffffce;
		height: 100vh;
	 }
	'
]
