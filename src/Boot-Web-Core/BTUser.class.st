"
A user
"
Class {
	#name : #BTUser,
	#superclass : #BTIAMObject,
	#instVars : [
		'email'
	],
	#category : #'Boot-Web-Core-IAM'
}

{ #category : #'accessing - defaults' }
BTUser class >> systemIconName [

	^ #user
]
