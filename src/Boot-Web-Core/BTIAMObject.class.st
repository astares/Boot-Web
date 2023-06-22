"
Abstract superclass for Identity and Access management objects
"
Class {
	#name : #BTIAMObject,
	#superclass : #Object,
	#traits : 'TNamed',
	#classTraits : 'TNamed classTrait',
	#category : #'Boot-Web-Core-IAM'
}

{ #category : #testing }
BTIAMObject class >> isAbstract [

	^ self == BTIAMObject
]
