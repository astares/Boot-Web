"
A BTUserInfoTest is a test class for testing the behavior of BTUserInfo
"
Class {
	#name : #BTUserInfoTest,
	#superclass : #TestCase,
	#instVars : [
		'userInfo'
	],
	#category : #'Boot-Web-Core-Tests-Session'
}

{ #category : #running }
BTUserInfoTest >> setUp [ 
 
	super setUp.	
	userInfo := BTUserInfo forUser: (BTUser named: 'admin')
]

{ #category : #'tests - theming' }
BTUserInfoTest >> testLighThemeByDefault [

	self assert: userInfo isLightThemeSet
]

{ #category : #'tests - theming' }
BTUserInfoTest >> testSwitchToDarkTheme [

	userInfo setDarkTheme.
	
	self deny: userInfo isLightThemeSet
]

{ #category : #'tests - theming' }
BTUserInfoTest >> testSwitchToDarkThemeAndBackToLightTheme [

	userInfo setDarkTheme.

	self deny: userInfo isLightThemeSet.
	
	userInfo setLightTheme.
	
	self assert: userInfo isLightThemeSet
]
