"
A permission
"
Class {
	#name : #BTPermission,
	#superclass : #BTIAMObject,
	#instVars : [
		'email'
	],
	#category : #'Boot-Web-Core-IAM'
}

{ #category : #'meta-object-protocol' }
BTPermission class >> read [

	^ self named: 'READ'
]

{ #category : #'accessing - defaults' }
BTPermission class >> systemIconName [

	^ #permission
]

{ #category : #writing }
BTPermission class >> write [

	^ (self named: 'WRITE')
]
